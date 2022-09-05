import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/model/card_details_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/model/wallet_details_model.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/dashboard/model/dashboard_model.dart';

class WalletFundRepository {
  final HttpService httpService;
  WalletFundRepository({required this.httpService});

 
  Future<dynamic> addfunds(String amount) async {
    const path = "${EndPointURL.baseURL}/api/addfunds";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(
        Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          data: {
            "amount":amount,
          },
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return _result;
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if(_result.response!.statusCode == 409 || _result.response!.statusCode == 400 ){
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
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }
}
