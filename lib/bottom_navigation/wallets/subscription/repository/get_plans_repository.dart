import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/model/get_plans_model.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


class PlansRepository {
  final HttpService httpService;
  PlansRepository({required this.httpService});

  Future<PlanModel> getPlans() async {
    const path = "${EndPointURL.baseURL}/api/plans";
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
        return PlanModel.fromJson(_result);
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if(_result.response!.statusCode == 409 || _result.response!.statusCode == 400){
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

  Future<dynamic> subscribe(String coupon,Subscription plan) async {
    const path = "${EndPointURL.baseURL}/api/subscribe";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final token = await MySharedPreferences().getStringValue(Constant.logintoken);
    try {
      final response = await httpService.handleVerifyPostRequest(
          path,
          data: {
            "plan_name": plan.plan_name,
            "plan_type": plan.plan_type,
            "plan_id": plan.id,
            "plan_price": plan.plan_price,
            "plan_currency": plan.currency,
            "cpn": coupon
          },

          token: token,
          email: email
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return _result;
      } else {
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on DioError catch (_result) {
      final response = jsonDecode(_result.response.toString());

      if(_result.response!.statusCode == 409 || _result.response!.statusCode == 400){
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
    } catch (e) {
      throw HtpCustomError(
        code: 0,
        message: 'Something went wrong',
        result: 'failure',
      );
    }
  }
}
