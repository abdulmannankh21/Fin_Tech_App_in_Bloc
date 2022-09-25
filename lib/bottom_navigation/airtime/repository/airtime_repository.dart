import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../core/data/endpoint/endpoint_url.dart';
import '../../../core/errors/htp_custom_error.dart';
import '../../../core/services/http_service.dart';
import '../../../core/services/response_model/request_type.dart';
import '../../../core/services/response_model/response_model.dart';
import '../../../core/utils/shared_preferences.dart';
import '../../../src/constant/constant.dart';
import '../model/operator_model/airtime_operator_model.dart';


class AirtimeRepository {
  final HttpService httpService;
  AirtimeRepository({required this.httpService});

  Future<OperatorModel> getOperatorDetails(String countryIso) async {
    final path = "${EndPointURL.baseURL}/api/getoperatorbyiso";
    try {
      final email = await MySharedPreferences().getStringValue(Constant.email);
      final token = await MySharedPreferences().getStringValue(Constant.logintoken);
      final response = await httpService.handleVerifyPostRequest(
        path,
        email: email,
        token: token,
        country: countryIso

      );
      print(response);
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return OperatorModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      print(jsonDecode(_result.response?.data));
      final user = ResponseModel.fromJson(jsonDecode(_result.response?.data));
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
