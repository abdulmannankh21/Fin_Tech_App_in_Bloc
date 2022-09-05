import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/dashboard/model/dashboard_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DashboardRepository {
  final HttpService httpService;

  DashboardRepository({required this.httpService});

  Future<DashboardModel> dashboard(String email) async {
    final path = "${EndPointURL.baseURL}/api/dashboard";
    try {
      final token = await MySharedPreferences().getStringValue(Constant.logintoken);
      final id = await MySharedPreferences().getStringValue(Constant.parentId);
      final ewallet = await MySharedPreferences().getStringValue(Constant.ewalletId);
      final response = await httpService.handleVerifyPostRequest(
        path,
        data: {"email": email},
        token: token,
        email: email,
        ewallet: ewallet,
        id: id

      );

      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        final model = DashboardModel.fromJson(_result);
        print(model.wallet_balance);
        return DashboardModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());
      print(_result.response!.statusCode);
      if(_result.response!.statusCode == 409 ||_result.response!.statusCode == 400){
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
    } catch (e, s) {
      throw HtpCustomError(
        code: 0,
        message: e.toString() + s.toString(),
        result: '',
      );
    }
  }
}
