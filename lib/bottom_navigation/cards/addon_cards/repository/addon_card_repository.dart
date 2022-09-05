import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/bottom_navigation/cards/addon_cards/model/addon_card_model.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/model/block_card_model.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';

class AddOnCardRepository {
  final HttpService httpService;
  AddOnCardRepository({required this.httpService});

  Future<AddonCardModel> getAddOnCards() async {
    final path = "${EndPointURL.baseURL}/api/getaddoncards";
    try {
      final email = await MySharedPreferences().getStringValue(Constant.email);
      final token = await MySharedPreferences().getStringValue(Constant.logintoken);
      final response = await httpService.handleVerifyPostRequest(
        path,
        token: token,
        email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return AddonCardModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if(_result.response!.statusCode == 409 || _result.response!.statusCode == 400 ){
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
      throw HtpCustomError(
        code: 0,
        message: 'Error: $e',
        result: 'failure',
      );
    }
  }
}
