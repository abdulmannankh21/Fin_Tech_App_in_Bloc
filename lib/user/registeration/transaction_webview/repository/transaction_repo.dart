import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/user/registeration/verify_email/model/verify_email_model.dart';
import 'package:flutter_app/user/registeration/verify_mobile/model/verify_mobile_model.dart';




class TransactionRepo {
  final HttpService httpService;

  TransactionRepo({required this.httpService});

  Future<dynamic> checkStatus({
    required String email,
    required String token,

  }) async {
    try {
      final response = await httpService.handleVerifyPostRequest(
        "${EndPointURL.baseURL}/api/dashboard",
        data: {
          "email": email
        },
        email: email,
        token:token,
      );
      print(json.decode(response.toString()));
      print(response.statusCode!);
      if (response.statusCode! == 200) {
        final _result = json.decode(response.data);
        return _result;
      } else if(response.statusCode! == 201){
        final _kycResult = json.decode(response.data);

        return _kycResult;
      }else if(response.statusCode! == 202){
        final _kycResult = json.decode(response.data);

        return _kycResult;
      }else if(response.statusCode! == 203){
        final _kycResult = json.decode(response.data);
        return _kycResult;
      }else{
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
      final user = ResponseModel.fromJson(jsonDecode(_result.response?.data));
      print(user);
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
