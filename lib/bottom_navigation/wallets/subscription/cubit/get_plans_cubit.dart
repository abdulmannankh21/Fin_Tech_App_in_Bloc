import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/model/get_plans_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/repository/get_plans_repository.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'get_plans_state.dart';

class PlanCubit extends Cubit<PlanState> {
  final PlansRepository repository;
  PlanCubit({required this.repository})
      : super(PlanInitialState());

  void getPlans() async {
    try {
      emit(PlanLoadingState("Loading..."));
      final _model = await repository.getPlans();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      print(_model);
      emit(PlanSuccessState(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(PlanErrorState(e.message ?? ''));
    } catch (error) {
      emit(PlanErrorState("$error"));
    }
  }



}