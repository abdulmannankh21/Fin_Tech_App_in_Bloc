import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/mode/get_countries_model.dart';
import 'package:flutter_app/core/mode/get_currency_model.dart';
import 'package:flutter_app/core/mode/get_currency_symbol_model.dart';
import 'package:flutter_app/core/mode/get_state_codes_model.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:http/http.dart';
import '../services/response_model/response_model.dart';

class GeneralDataQueriesRepo {
  final HttpService httpService;

  GeneralDataQueriesRepo({required this.httpService});

  Future<List<GetStateCodesModel>> getStateCodes(String countryCode) async {
    final path = '${EndPointURL.baseURL}/api/getstatecodes';
    try {
      final response = await httpService.handlePostRequest(
        path,
        data: {"country_code": countryCode},
        type: RequestType.WithOnlyAPIKeys,
        isTokenCall: false,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        final _states = (_result as List)
            .map((data) => GetStateCodesModel.fromJson(data))
            .toList();
        return _states;
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

  Future<GetCurrencyModel> getCurrency(String countryCode) async {
    final path = '${EndPointURL.baseURL}api/getcurrency';
    try {
      final response = await httpService.handlePostRequest(
        path,
        data: {"country_code": countryCode},
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return GetCurrencyModel.fromJson(_result);
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

  Future<GetCurrencySymbolModel> getCurrencySymbol(String countryCode) async {
    final path = '${EndPointURL.baseURL}api/getcurrencysymbol';
    try {
      final response = await httpService.handlePostRequest(
        path,
        data: {"country_code": countryCode},
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return GetCurrencySymbolModel.fromJson(_result);
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

  Future<List<GetCountriesModel>> getCountries() async {
    final path = '${EndPointURL.baseURL}api/getcountries';
    try {
      final response =
          await httpService.handlePostRequest(path, isTokenCall: false);
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        final _countries = (_result as List)
            .map((data) => GetCountriesModel.fromJson(data))
            .toList();
        return _countries;
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
}
