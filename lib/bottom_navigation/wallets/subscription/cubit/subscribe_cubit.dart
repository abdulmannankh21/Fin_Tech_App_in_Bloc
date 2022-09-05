import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/model/get_plans_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/repository/get_plans_repository.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'subscribe_state.dart';

class SubscribeCubit extends Cubit<SubscribeState> {
  final PlansRepository repository;
  SubscribeCubit({required this.repository})
      : super(SubscribeInitialState());

  void subscribe(String coupon,Subscription plan) async {
    try {
      emit(SubscribeLoadingState("Loading..."));
      final _model = await repository.subscribe(coupon, plan);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      print(_model);
      emit(SubscribeSuccessState(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(SubscribeErrorState(e.message ?? ''));
    } catch (error) {
      emit(SubscribeErrorState("$error"));
    }
  }



}