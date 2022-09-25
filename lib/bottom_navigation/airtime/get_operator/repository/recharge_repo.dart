import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/data/endpoint/endpoint_url.dart';
import '../../../../core/errors/htp_custom_error.dart';
import '../../../../core/services/http_service.dart';
import '../../../../core/services/response_model/request_type.dart';
import '../../../../core/services/response_model/response_model.dart';
import '../../../../core/utils/shared_preferences.dart';
import '../../../../src/constant/constant.dart';
import '../model/get_operator_model.dart';


class AirtimeRechargeRepository {
  final HttpService httpService;
  AirtimeRechargeRepository({required this.httpService});

  Future<GetOperatorModel> getOperatorById(String operatorId,String countryIso) async {
    final path = "${EndPointURL.baseURL}/api/getoperatorbyoperatorid";
    try {
      final email = await MySharedPreferences().getStringValue(Constant.email);
      final token = await MySharedPreferences().getStringValue(Constant.logintoken);
      print(email + operatorId + countryIso);
      final response = await httpService.handleVerifyPostRequest(
        path,
        data: {"country": countryIso,"operatorid":operatorId,"email":email},
        email: email,
        token: token,
        country: countryIso,
        operatorid: operatorId
      );
      print(response);
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return GetOperatorModel.fromJson(_result);
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
