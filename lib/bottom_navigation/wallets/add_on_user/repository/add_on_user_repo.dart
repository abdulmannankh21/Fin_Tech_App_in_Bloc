import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/bottom_navigation/cards/create_addon_cards/model/issue_card_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/model/add_on_user_model.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


class AddOnUserRepository {
  final HttpService httpService;
  AddOnUserRepository({required this.httpService});

  Future<AddOnUserModel> getAddOnUsers() async {
    final path = "${EndPointURL.baseURL}/api/addonuserlist";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
        path,
        token: token,
        email: email,

      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return AddOnUserModel.fromJson(_result);
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
        result: 'error',
      );
    }
  }

  Future<dynamic> createAddOnUser({
    required String email,
    required String password,
    required String dob,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String phoneCode,
    required String mothersName,
    required String line1,
    required String city,
    required String state,
    required String country,
    required String zip,
    required String countryCode,
  }) async {
    try {
      final userEmail = await MySharedPreferences().getStringValue(Constant.email);
      final token = await MySharedPreferences().getStringValue(Constant.logintoken);
      final type = await MySharedPreferences().getStringValue(Constant.loginUserType);
      final eWalletId = await MySharedPreferences().getStringValue(Constant.ewalletId);
      final parentId = await MySharedPreferences().getStringValue(Constant.parentId);
      final response = await httpService.handleVerifyPostRequest(
        "${EndPointURL.baseURL}/api/createaddonuser",
        data: {
          "email": email,
          "password": password,
          "first_name": firstName,
          "last_name": lastName,
          "phone_number": phoneNumber,
          "phone_code":phoneCode,
          "type": type,
          "mothers_name": mothersName,
          "type":type,
          "parent_wallet":eWalletId,
          "parent_id":parentId,
          "line_1": line1,
          "city": city,
          "state": state,
          "country": country,
          "zip": zip,
          "date_of_birth": dob,
          "country_code": countryCode,
        },
        email: userEmail,
        token: token
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return _result;
      } else {
        print(response);
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on FormatException catch (e) {
      print(e);
      throw HtpCustomError(
        code: 0,
        message: "Format Exception: $e",
        result: "failure",
      );
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if(_result.response!.statusCode == 409 || _result.response!.statusCode == 400 ){
        throw HtpCustomError(
          code: _result.response!.statusCode,
          message: response['message'],
          result: response['result'],
        );
      }
      final user = ResponseModel.fromJson(response);
      throw HtpCustomError(
        code: user.code,
        message: user.message,
        result: user.result,
      );
    } catch (e, s) {
      print(e);
      throw HtpCustomError(
        code: 0,
        message: e.toString() + s.toString(),
        result: '',
      );
    }
  }
}
