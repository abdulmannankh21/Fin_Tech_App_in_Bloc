import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/mastercard/repo/mastercard_repo.dart';

import '../../../core/errors/htp_custom_error.dart';
import '../../../core/utils/shared_preferences.dart';
import '../../../src/constant/constant.dart';
import '../model/common_response.dart';
part 'mastercard_state.dart';

class MasterCardCubit extends Cubit<MasterCardState> {
  final MasterCardRepository repository;
  MasterCardCubit({required this.repository})
      : super(MasterCardInitialState());

  void getCardStatus() async {
    try {
      emit(MasterCardLoadingState("Loading card..."));
      final _model = await repository.getCardDetails();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);

      emit(MasterCardDetailSuccessState(_model,_email,_token));


    } on HtpCustomError catch (e) {
      emit(MasterCardErrorState(e.message ?? ''));
    } catch (error) {
      emit(MasterCardErrorState("$error"));
    }
  }

  void loadFunds({required double amount} ) async {
    try {

      emit(MasterCardLoadingState("Loading card..."));
      final _model = await repository.loadfunds(amount);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(MasterCardSuccessState(_model,_email,_token));


    } on HtpCustomError catch (e) {
      emit(MasterCardErrorState(e.message ?? ''));
    } catch (error) {
      emit(MasterCardErrorState("$error"));
    }
  }



}
