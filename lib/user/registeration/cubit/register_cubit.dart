import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/login/data/forgot_password_model/forgot_password_model.dart';
import 'package:flutter_app/user/login/data/login_model/user_model/user_model.dart';
import 'package:flutter_app/user/login/domain/login_repository.dart';
import 'package:flutter_app/user/registeration/model/registration_model.dart';
import 'package:flutter_app/user/registeration/repo/registration_repo.dart';


import '../../../../core/utils/commen_extensions.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegistrationRepository repository;
  RegisterCubit({required this.repository}) : super(LoginInitial()) {}



  Future<void> register({
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
    try {
      emit(RegisterLoading(
        loadingMessage: 'loading...',
        dateTime: DateTime.now(),
      ));

        final userModel = await repository.register(email,password,firstname,lastname,number,username,profile,company,mobile_code,country_code,country,agree
        );
        emit(RegisterSuccess(userModel: userModel));

    } on HtpCustomError catch (e) {
      emit(RegisterError(
        errorMessage: e.message ?? "Something went wrong",
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      // debugPrint("Errror: $error");
      emit(RegisterError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }


}
