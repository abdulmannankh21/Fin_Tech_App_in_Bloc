



import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/data/endpoint/endpoint_url.dart';
import '../../../../core/errors/htp_custom_error.dart';
import '../../../../core/services/http_service.dart';
import '../../../../core/services/response_model/request_type.dart';
import '../../../../core/services/response_model/response_model.dart';
import '../../../../core/utils/shared_preferences.dart';
import '../../../../src/constant/constant.dart';


class AirtimeProcessRepository {

  final HttpService httpService;
  AirtimeProcessRepository({required this.httpService});

  Future<dynamic> processRecharge(String operatorId,String countryIso,String amount,String phoneNumber) async {
    final path = "${EndPointURL.baseURL}/api/processrechargerequest";
    try {
      final email = await MySharedPreferences().getStringValue(Constant.email);
      final token = await MySharedPreferences().getStringValue(Constant.logintoken);
      final response = await httpService.handleVerifyPostRequest(
          path,
          data: {"country": countryIso,"operator_id":operatorId,"email":email,"recharge_amount":amount,"phone_number":phoneNumber},
          email: email,
          token: token
      );
      print(response);

      print("code" + response.statusCode.toString());
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        if(_result['code'] == 400){
          print(_result['message']);
          throw HtpCustomError(
            code: _result['code'],
            message: _result['message'],
          );
        }else{
          return _result;
        }

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
    }
  }
}