import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/login/data/forgot_password_model/forgot_password_model.dart';
import 'package:flutter_app/user/login/data/login_model/user_model/user_model.dart';
import 'package:flutter_app/user/login/domain/login_repository.dart';


import '../../../../core/utils/commen_extensions.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository repository;
  LoginCubit({required this.repository}) : super(LoginInitial()) {}

  String? profileImage;
  String? name;
  String? ewalletId;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      emit(LoginLoading(
        loadingMessage: 'loading...',
        dateTime: DateTime.now(),
      ));
      if (!email.isValidEmail()) {
        emit(LoginError(
          errorMessage: "Please enter a valid email id to proceed.",
          dateTime: DateTime.now(),
        ));
      }

      ///Minimum eight characters, at least one letter, one number and one special character:
      else if (!password.isValidPassword()) {
        emit(LoginError(
          errorMessage:
              "Passord should be minimum eight characters, at least one letter, one number and one special character",
          dateTime: DateTime.now(),
        ));
      } else {
        final userModel = await repository.login(
          email: email,
          password: password,
        );
        if(userModel.result! =='success') {
          await MySharedPreferences().setStringeanValue(
            key: Constant.password,
            value: password,
          );

          ///Listen this [profileImage and name] in homepage
          // profileImage = userModel.user?.image;
          // name = userModel.user?.name;
          // ewalletId = userModel.user?.ewalletId;
          //
          //Save email and password to chache
          await MySharedPreferences().setStringeanValue(
            key: Constant.loginUserType,
            value: userModel.user!.type ?? "",
          );
          await MySharedPreferences().setStringeanValue(
            key: Constant.phone,
            value: userModel.user!.phoneNumber ?? "",
          );
          await MySharedPreferences().setStringeanValue(
            key: Constant.name,
            value: userModel.user!.name
                ?? "",
          );

          await MySharedPreferences().setStringeanValue(
            key: Constant.profileImage,
            value: userModel.user!.merchant_logo!,
          );

          await MySharedPreferences().setStringeanValue(
            key: Constant.parentId,
            value: userModel.user!.ids.toString(),
          );
          await MySharedPreferences().setStringeanValue(
            key: Constant.ewalletId,
            value: userModel.user!.ewalletId!,
          );
          await MySharedPreferences().setStringeanValue(
            key: Constant.email,
            value: userModel.user!.email!,
          );
          await MySharedPreferences().setStringeanValue(
            key: Constant.logintoken,
            value: userModel.token!,
          );
          await MySharedPreferences().setBooleanValue(
              key: Constant.firstTimeOpen, value: true);
        }
          emit(LoginSuccess(userModel: userModel));


      }
    } on HtpCustomError catch (e) {
      emit(LoginError(
        errorMessage: e.message ?? "Something went wrong",
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      // debugPrint("Errror: $error");
      emit(LoginError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }

  void fogetPassword(String email) async {
    try {
      emit(LoginLoading(
        loadingMessage: 'loading...',
        dateTime: DateTime.now(),
      ));
      if (!email.isValidEmail()) {
        emit(LoginError(
          errorMessage: "Please enter a valid email id to proceed.",
          dateTime: DateTime.now(),
        ));
      } else {
        final _model = await repository.forgotpassword(email);
        emit(ForgetPasswordSuccess(_model));
      }
    } catch (e) {
      emit(LoginError(
        errorMessage: "$e",
        dateTime: DateTime.now(),
      ));
    }
  }
}
