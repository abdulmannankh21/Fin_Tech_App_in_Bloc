import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/logout/model/profile_image_change_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/user/login/data/login_model/user_model/user_model.dart';


import '../../../core/data/endpoint/endpoint_url.dart';
import '../../../core/services/response_model/response_model.dart';
import '../data/forgot_password_model/forgot_password_model.dart';
import '../data/logout_model/logout_model.dart';

class LoginRepository {
  final HttpService httpService;
  LoginRepository({required this.httpService});

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    final path = "${EndPointURL.baseURL}/api/loginapp";
    try {
      final response = await httpService.handlePostRequest(
        path,
        data: {
          "user": {"email": email, "password": password}
        },
        type: RequestType.WithOnlyAPIKeys,
        isTokenCall: false,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        print(_result);
        return UserModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      // debugPrint("Errror: $_result");
      final user = ResponseModel.fromJson(jsonDecode(_result.response?.data));
      throw HtpCustomError(
        code: user.code,
        message: user.message,
        result: user.result,
      );
    } catch (e, s) {
      throw HtpCustomError(
        code: 0,
        message: e.toString() + s.toString(),
        result: '',
      );
    }
  }

  Future<ForgotPasswordModel> forgotpassword(String email) async {
    final path = "${EndPointURL.baseURL}api/forgot_password_request";
    try {
      final response = await httpService.handlePostRequest(
        path,
        data: {"email": email},
        type: RequestType.WithOnlyAPIKeys,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return ForgotPasswordModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final user = ResponseModel.fromJson(jsonDecode(_result.response?.data));
      throw HtpCustomError(
        code: user.code,
        message: user.message,
        result: user.result,
      );
    } catch (e, s) {
      throw HtpCustomError(
        code: 0,
        message: e.toString() + s.toString(),
        result: '',
      );
    }
  }

  Future<LogoutModel> logOut() async {
    final path = "${EndPointURL.baseURL}/api/logout";
    try {
      final response = await httpService.handleVerifyPostRequest(
        path
      );

      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return LogoutModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final user = ResponseModel.fromJson(jsonDecode(_result.response?.data));
      throw HtpCustomError(
        code: user.code,
        message: user.message,
        result: user.result,
      );
    } catch (e, s) {
      throw HtpCustomError(
        code: 0,
        message: e.toString() + s.toString(),
        result: '',
      );
    }
  }
  Future<ProfileImageChangeModel> changeProfileImage({
    required XFile file
  }) async {

    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    final id = await MySharedPreferences().getStringValue(Constant.parentId);
    final ewallet = await MySharedPreferences().getStringValue(Constant.ewalletId);
    final path = "${EndPointURL.baseURL}/api/userprofile-image";
    try {
      final response = await httpService.handlePostForImageRequest(
          path,
          file: file,
          token:token,
          email:email,
          id: id,
          ewallet: ewallet

      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        print(response.data);
        //final _result = json.decode(response.data);
        return ProfileImageChangeModel.fromJson(response.data);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());
      print(_result.response!.statusCode);

      if(_result.response!.statusCode == 409){
        throw HtpCustomError(
          code: _result.response!.statusCode,
          message: response['message'],
          result: response['result'],
        );
      }
      final user = ResponseModel.fromJson(response);
      print(user.message);
      throw HtpCustomError(
        code: user.code,
        message: user.message,
        result: user.result,
      );
    } catch (e, s) {
      throw HtpCustomError(
        code: 0,
        message: e.toString() + s.toString(),
        result: '',
      );
    }
  }


}
