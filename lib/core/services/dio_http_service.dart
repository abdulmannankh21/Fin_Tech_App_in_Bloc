import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/user/login/data/login_model/user_model/user_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/data/keys/keys.dart';

import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/core/services/response_model/request_type.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


import 'http_service.dart';

class DioHttpService implements HttpService {
  late Dio _dio;

  Map<String, dynamic> headerWithTokenAndKeys = {
    'api-key': Keys.apiKey,
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> headerWithTokenAndKeysWalletId = {
    'api-key': Keys.apiKey,
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> headerWithTokenEmailWalletIdSecret = {
    'API-KEY': Keys.apiKey,
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> getHeaderWithTokenEmailEwalletUserId = {
    'api-key': Keys.apiKey,
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> headerWithTokenAPISecret = {'API-KEY': Keys.apiKey};

  Map<String, String> cookies = {};

  // next three lines makes this class a Singleton
  static DioHttpService _instance = DioHttpService.internal();
  factory DioHttpService() => _instance;

  DioHttpService.internal() {
    _dio = Dio();
  }

  Future<UserModel?> _getIdToken() async {
    final path = "${EndPointURL.baseURL}api/loginapp";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final password =
        await MySharedPreferences().getStringValue(Constant.password);

    final response = await handlePostRequest(
      path,
      data: {
        "user": {"email": email, "password": password}
      },
      type: RequestType.WithOnlyAPIKeys,
      isTokenCall: false,
    );
    if (response.statusCode! >= 200 && response.statusCode! <= 300) {
      final _result = json.decode(response.data);
      final _userModel = UserModel.fromJson(_result);
      return _userModel;
    }
    return null;
  }

  @override
  Future<Response> handlePostRequest(
    String path, {
    Map<String, dynamic>? data,
    RequestType? type,
    bool isTokenCall = true,
  }) async {
    if (isTokenCall) {
      final _option = await getOption(type);
      final _response = await _dio.post(
        path,
        data: data,
        options: _option,
      );
      _updateCookie(_response);
      return _response;
    } else {
      final _option = Options(headers: {'api-key': Keys.apiKey});
      print(data);
      final _response = await _dio.post(
        path,
        data: data,
        options: _option,
      );
      //_updateCookie(_response);
      return _response;
    }
  }

  @override
  Future<Response> handleVerifyPostRequest(
      String path, {
        Map<String, dynamic>? data,
        String? email,
        String? token,
        String? ewallet,
        String? id,
        String? country,
        String? operatorid

      }) async {
      print(path);
      print(email);
      print(token);
      final _option;
      if(token != null) {
        _option = Options(headers: {'api-key': Keys.apiKey,'country':country,'operatorid':operatorid,'token' : token,'email':email,'ewalletid':ewallet,'user_id':id});
      } else{
        _option = Options(headers: {'api-key': Keys.apiKey});
      }
      print(data);
     // print(json.decode(_option.toString()));
      final _response = await _dio.post(
        path,
        data: data,
        options: _option,
      );
      print(json.decode(_response.toString()));
     // _updateCookie(_response);
      return _response;
    }


  @override
  Future<Response> handleGetRequest(
    String path, {
        String? email,
        String? token,
        String? ewallet,
        String? id,
      }
  ) async {
    final _option = await Options(headers: {'api-key': Keys.apiKey,'token' : token,'email':email,'ewalletid':ewallet,'user_id':id});
    final _response = await _dio.get(
      path,
      options: _option,
    );
   // _updateCookie(_response);
    return _response;
  }

  @override
  Future<Response> handlePostForImageRequest(
    String path, {
    required XFile file,
    required String? email,
    required String? token,
    required String? id,
    required String? ewallet,
  }) async {
    String filePath = file.path;
    print(file.name);
    String fileName = DateTime.now().microsecond.toString();
    final option = await Options(headers: {'api-key': Keys.apiKey,'token' : token,'email':email,'user_id':id,'ewalletid':ewallet});
    FormData formData = FormData.fromMap({
      "image": await MultipartFile.fromFile(filePath, filename: file.name),
    });
    final _response =
        await _dio.post(path, data: formData, options: option);
    return _response;
  }
  Future<Response> handlePostForRegister(
      String path, {
        required String email,
        required String password,
        required String firstname,
        required String lastname,
        required String number,
        required String username,
        required String profile,
        required String company,
        required String mobile_code,
        required String country_code,
        required String country,
        required bool agree,
      }) async {

    final option = await Options(headers: {'api-key': Keys.apiKey});
    FormData formData = FormData.fromMap({
      "email": email,
      "password":password,
      "firstname":firstname,
      "lastname":lastname,
      "mobile":number,
      "username":username,
      "mobile_code":mobile_code,
      "country_code":country_code,
      "country":country,
      "agree":agree,
      "profile":profile,
      "company":company,
      "password_confirmation":password
    });
    final _response =
    await _dio.post(path, data: formData, options: option);
    return _response;
  }

  Future<Response> depositFund(
      String path, {
        required String amount,
        required String currency,
        required int code,
        required String token,required String email}) async {

    final option = await Options(headers: {'token' : token,'email':email});
    FormData formData = FormData.fromMap({
      "amount": amount,
      "currency":currency,
      "method_code":code

    });
    final _response =
    await _dio.post(path, data: formData, options: option);
    print(_response);
    return _response;
  }

  Future<Options> getOption(
    RequestType? type, {
    Map<String, dynamic>? body,
  }) async {
    final _userModel = await _getIdToken();

    switch (type) {
      case RequestType.WithTokenAndKeys:
        if (_userModel != null) {
          headerWithTokenAndKeys['token'] = _userModel.token ?? '';
        }
        return Options(headers: headerWithTokenAndKeys);

      case RequestType.WithTokenEmailWalletId:
        if (_userModel != null) {
          headerWithTokenAndKeysWalletId['token'] = _userModel.token ?? '';
          headerWithTokenAndKeysWalletId['email'] = _userModel.user!.email!;
          headerWithTokenAndKeysWalletId['ewallet_id'] =
              _userModel.user!.ewalletId!;
          headerWithTokenAndKeysWalletId['user_id'] = _userModel.user!.ids;
        }
        return Options(headers: headerWithTokenAndKeysWalletId);

      case RequestType.WithTokenEmailWalletIdSecret:
        if (_userModel != null) {
          headerWithTokenEmailWalletIdSecret['token'] = _userModel.token ?? '';
          headerWithTokenEmailWalletIdSecret['email'] = _userModel.user!.email!;
          headerWithTokenEmailWalletIdSecret['ewallet_id'] =
              _userModel.user!.ewalletId!;
          headerWithTokenEmailWalletIdSecret['user_id'] = _userModel.user!.ids;
        }
        return Options(headers: headerWithTokenEmailWalletIdSecret);

      case RequestType.WithTokenAPISecret:
        if (_userModel != null) {
          headerWithTokenAPISecret['token'] = _userModel.token ?? '';

        }
        return Options(headers: headerWithTokenAPISecret);

      case RequestType.WithOnlyAPIKeys:
        return Options(
          headers: {'api-key': Keys.apiKey},
        );

      default:
        return Options();
    }
  }

  Future<void> _updateCookie(response) async {
    try {
      List allSetCookie = response.headers['set-cookie'];

      for (var element in allSetCookie) {
        var setCookies = element.split(',');

        for (var setCookie in setCookies) {
          var cookies = setCookie.split(';');

          for (var cookie in cookies) {
            _setCookie(cookie);
          }
        }

        headerWithTokenAndKeysWalletId['cookies'] = _generateCookieHeader();
        headerWithTokenAndKeys['cookies'] = _generateCookieHeader();
        headerWithTokenEmailWalletIdSecret['cookies'] = _generateCookieHeader();
        headerWithTokenAPISecret['cookies'] = _generateCookieHeader();
        getHeaderWithTokenEmailEwalletUserId['cookies'] =
            _generateCookieHeader();
      }
    } catch (e) {}
  }

  void _setCookie(String rawCookie) {
    if (rawCookie.isNotEmpty) {
      var keyValue = rawCookie.split('=');
      if (keyValue.length == 2) {
        var key = keyValue[0].trim();
        var value = keyValue[1];

        // ignore keys that aren't cookies
        if (key == 'path' || key == 'expires') {
          return;
        }

        cookies[key] = value;
      }
    }
  }

  String _generateCookieHeader() {
    String cookie = "";

    for (var key in cookies.keys) {
      if (cookie.isNotEmpty) {
        cookie += ";";
      }
      cookie += "$key=${cookies[key]}";
    }

    return cookie;
  }
}
