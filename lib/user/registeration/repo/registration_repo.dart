import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/logout/model/profile_image_change_model.dart';
import 'package:flutter_app/user/registeration/model/registration_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/user/login/data/login_model/user_model/user_model.dart';


import '../../../core/data/endpoint/endpoint_url.dart';
import '../../../core/services/response_model/response_model.dart';


class RegistrationRepository {
  final HttpService httpService;
  RegistrationRepository({required this.httpService});

  Future<RegistrationModel> register(String email,
   String password,
   String firstname,
   String lastname,
   String number,
   String username,
   String profile,
   String company,
   String mobile_code,
   String country_code,
   String country,
   bool agree) async {
    final path = "${EndPointURL.baseURL}/api/apiregister";
    try {
      final response = await httpService.handlePostForRegister(
        path,
        email:email,
        password: password,
        firstname: firstname,
        lastname: lastname,
        agree: agree,
        profile: profile,
        company: company,
        username: username,
        country: country,
        country_code: country_code,
        mobile_code: mobile_code,
        number: number
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        print(_result);
        final model = RegistrationModel.fromJson(_result);
        return model;
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




}
