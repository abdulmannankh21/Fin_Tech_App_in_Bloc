import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/dashboard/model/dashboard_model.dart';
import 'package:flutter_app/user/dashboard/repository/dashboard_repository.dart';

import '../../../core/services/response_model/response_model.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepository repository;
  DashboardCubit({required this.repository}) : super(DashboardInitialState());
  String? profileImage;
  String? name;
  String? lastname;
  String? phoneNumber;

  Future<void> dashboard() async {
    try {
      emit(DashboardLoading('loading...'));
      final email = await MySharedPreferences().getStringValue(Constant.email);
      if (email != '') {
        final _model = await repository.dashboard(email);
        // name = _model.userdata!.first_name;
        // lastname = _model.userdata!.last_name;
        // phoneNumber = _model.userdata!.phone_number;

      //  profileImage = _model.userdata!.image;
      //   await MySharedPreferences().setStringeanValue(
      //     key: Constant.profileImage,
      //     value: _model.userdata!.image!,
      //   );
      //   await MySharedPreferences().setStringeanValue(
      //     key: Constant.name,
      //     value: _model.userdata!.first_name!,
      //   );
      //   await MySharedPreferences().setStringeanValue(
      //     key: Constant.lastname,
      //     value: _model.userdata!.last_name!,
      //   );
      //   print(_model.iban.bankAccountDetails![0].beneficiaryBank);
        emit(DashboardSuccess(_model, DateTime.now()));
      }
    } on HtpCustomError catch (e) {
      emit(DashboardError(
        e.message!,DateTime.now(),
      ));
    } on DioError catch (_result) {
      final user = ResponseModel.fromJson(jsonDecode(_result.response?.data));
      emit(
        DashboardError(
          user.message ?? "Something went wrong",
          DateTime.now(),
        ),
      );
    } catch (e) {
      emit(
        DashboardError(
          "Something went wrong",
          DateTime.now(),
        ),
      );
    }
  }
}
