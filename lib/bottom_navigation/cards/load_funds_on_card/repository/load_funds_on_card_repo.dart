import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/model/load_funds_on_card_model.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';

class LoadFundsOnCardRepository {
  final HttpService httpService;

  LoadFundsOnCardRepository({required this.httpService});

  Future<LoadFundsOnCardModel> loadFundsOnCard({
    required String cardId,
    required String amount,
    required String currency,
  }) async {
    final path = "${EndPointURL.baseURL}/api/loadcardfunds";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
        path,
        data: {
          "cardid": cardId,
          "amount": amount,
          "currency": currency,
        },
        token: token,
        email: email
      );
      print(response.data);
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return LoadFundsOnCardModel.fromJson(_result);
      } else {
        final _result = json.decode(response.toString());
        print(_result);
        throw HtpCustomError(
          code: response.statusCode,
          message: _result.status.message,
        );
      }
    } on DioError catch (_result) {
      print(_result.response!.statusCode);
      final response = jsonDecode(_result.response.toString());

      if(_result.response!.statusCode == 409){
        print(response['message']);
        throw HtpCustomError(
          code: _result.response!.statusCode,
          message: response['message'],
          result: response['result'],
        );
      }
      final user = ResponseModel.fromJson(response['status']);
      throw HtpCustomError(
        code: user.code,
        message: user.message,
        result: user.result,
      );
    } catch (e) {
      print(e.toString());
      throw HtpCustomError(
        code: 0,
        message: 'Error: $e',
        result: 'failure',
      );
    }
  }
}
