import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import 'response_model/request_type.dart';

abstract class HttpService {
  Future<Response> handleGetRequest(
      String path, {
        String? email,
        String? token,
        String? ewallet,
        String? id,
      }
      );

  Future<Response> handlePostRequest(
      String path, {
        Map<String, dynamic>? data,
        RequestType? type,
        bool isTokenCall = true,
      });

  Future<Response> handleVerifyPostRequest(
      String path, {
        Map<String, dynamic>? data,
        String email,
        String token, String ewallet,String id
      }
      );


  Future<Response> handlePostForImageRequest(
      String path, {
        required XFile file,
        required String? email,
        required String? token,
        required String? id,
        required String? ewallet,
      });

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
      });

  Future<Response> depositFund(
      String path, {
        required String amount,
        required String currency,
        required int code,
        required String token,required String email}) ;
}
