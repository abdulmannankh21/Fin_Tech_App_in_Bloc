import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/user/create_business/model/create_business_model.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';

import '../../../core/services/response_model/response_model.dart';

class CreateWalletRepo {
  final HttpService httpService;

  CreateWalletRepo({required this.httpService});

  Future<CreateWalletModel> createPersonalWallet({
    required String email,
    required String password,
    required String dob,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String phoneCode,
    required String type,
    required String mothersName,
    required String line1,
    required String city,
    required String state,
    required String country,
    required String zip,
    required String countryCode,
    required String occupation,
    required String sourceOfFunds,
    required String sourceOfFundsOther,
    required bool acceptedTerms,
  }) async {
    try {
      final response = await httpService.handlePostRequest(
        "${EndPointURL.baseURL}/api/create_user_personal",
        data: {
          "email": email,
          "password": password,
          "first_name": firstName,
          "last_name": lastName,
          "phone_number": phoneNumber,
          "phone_code":phoneCode,
          "type": type,
          "mothers_name": mothersName,

          "line_1": line1,
          "city": city,
          "state": state,
          "country": country,
          "zip": zip,
          "date_of_birth": dob,
          "country_code": countryCode,
          "occupation": occupation,
          "sourceOfFunds": sourceOfFunds,
          "sourceOfFundsOther": null,
          "acceptedTerms" : true
        },
        type: RequestType.WithOnlyAPIKeys,
        isTokenCall: false,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        return CreateWalletModel.fromJson(_result);
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

  Future<CreateBusinessModel> createBusinesslWallet({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String type,
    required String mothersName,
    required String line1,
    required String city,
    required String state,
    required String country,
    required String zip,
    required String dob,
    required String companyName,
    required String sourceOfFunds,
    required String sourceOfFundsOther,
    required String registrationNumber,
    required String companyPosition,
    required String incorporation,
    required String industry,
    required String phoneCode,
    required String countryCode,
    required bool acceptedTerms,

  }) async {
    try {
      final response = await httpService.handlePostRequest(
        "${EndPointURL.baseURL}/api/create_user_business",
        data: {
          "email": email,
          "password": password,
          "first_name": firstName,
          "last_name": lastName,
          "phone_number": phoneNumber,
          "type": type,
          "mothers_name": mothersName,
          "line_1": line1,
          "city": city,
          "state": state,
          "country": country,
          "zip": zip,
          "date_of_birth": dob,
          "company_name": companyName,
          "registrationNumber": registrationNumber,
          "incorporation": incorporation,
          "company_position": companyPosition,
          "industry": industry,
          "sourceOfFunds": sourceOfFunds,
          "sourceOfFundsOther": null,
          "acceptedTerms" : true,
          "phone_code":phoneCode,
          "country_code":countryCode

        },
        type: RequestType.WithOnlyAPIKeys,
        isTokenCall: false,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final _result = json.decode(response.data);
        print(_result);
        return CreateBusinessModel.fromJson(_result);
      } else {
        print(json.decode(response.toString()));
        throw HtpCustomError(
          code: response.statusCode,
          message: response.statusMessage,
        );
      }
    } on FormatException catch (e) {
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
