import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/model/card_details_model.dart';
import 'package:flutter_app/bottom_navigation/mastercard/model/common_response.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';

class MasterCardRepository {
  final HttpService httpService;
  MasterCardRepository({required this.httpService});

  Future<MasterCardDetails> getCardDetails() async {
    const path = "${EndPointURL.baseURL}/api/mastercard";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return MasterCardDetails.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
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
      throw HtpCustomError(
        code: 0,
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }

  Future<CommonResponseModel> getCardStatus() async {
    const path = "${EndPointURL.baseURL}/api/mastercardstatus";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return CommonResponseModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
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
      throw HtpCustomError(
        code: 0,
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }

  Future<CommonResponseModel> issueCard(
      {
        required String addressLine1,
        String? addressLine2,
        required String city,
        required String state,
        required String country,
        required String zipCode
      }
      ) async {
    String path = "${EndPointURL.baseURL}/api/issuemastercard?line_1=${addressLine1}&line_2=${addressLine2}&city=${city}&state=${state}&country=${country}&zip=${zipCode}";
    print(path);
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return CommonResponseModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
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
      throw HtpCustomError(
        code: 0,
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }

  Future<TransactionDetails> getCardTransactions() async {
    const path = "${EndPointURL.baseURL}/api/mastercardtransactions";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return TransactionDetails.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
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
      throw HtpCustomError(
        code: 0,
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }

  Future<CommonResponseModel> loadfunds(double amount) async {
    const path = "${EndPointURL.baseURL}/api/mastercardloadfunds";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          data: {"amount": amount},
          token: token,
          email: email
      );

      final _result = json.decode(response.data);
      return CommonResponseModel.fromJson(_result);

    } on DioError catch (_result) {
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
      throw HtpCustomError(
        code: 0,
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }


}
