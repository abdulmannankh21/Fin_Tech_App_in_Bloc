import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/bottom_navigation/deposit/model/deposit_method_model.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';

import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';

class DepositRepository {
  final HttpService httpService;

  DepositRepository({required this.httpService});

  Future<DepositMethodModel> getMethods() async {
    const path = "${EndPointURL.baseURL}/api/deposit-methods";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(
        Constant.logintoken);
    try {
      final response = await httpService.handleGetRequest(
          path,
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        //final _result = json.decode(response.data);
        return DepositMethodModel.fromJson(response.data);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if (_result.response!.statusCode == 409 ||
          _result.response!.statusCode == 400) {
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
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }

  Future<dynamic> addFund(String amount, int code,String currency) async {
    const path = "${EndPointURL.baseURL}/api/deposit-insert";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(
        Constant.logintoken);
    try {
      final response = await httpService.depositFund(
          path,
          amount: amount,
          code: code,
          currency: currency,
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        //final _result = json.decode(response.data);
        return response.data;
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if (_result.response!.statusCode == 409 ||
          _result.response!.statusCode == 400) {
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
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }


}
