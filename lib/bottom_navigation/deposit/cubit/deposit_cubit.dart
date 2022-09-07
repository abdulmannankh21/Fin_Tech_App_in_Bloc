import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/model/card_details_model.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/repository/card_details_repository.dart';
import 'package:flutter_app/bottom_navigation/deposit/model/deposit_method_model.dart';
import 'package:flutter_app/bottom_navigation/deposit/repo/deposit_repo.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


part 'deposit_state.dart';

class DepositCubit extends Cubit<DepositState> {
  final DepositRepository repository;
  DepositCubit({required this.repository})
      : super(DepositInitialState());

  void getMethods() async {
    try {
      emit(DepositLoadingState("Loading card..."));
      final _model = await repository.getMethods();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(DepositSuccesstate(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(DepositErrorState(e.message ?? ''));
    } catch (error) {
      emit(DepositErrorState("$error"));
    }
  }

  void depositFund(String amount,int code, String currency) async {
    try {
      emit(DepositLoadingState("Loading card..."));
      final _model = await repository.addFund(amount, code, currency);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(DepositInsertSuccesstate(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(DepositErrorState(e.message ?? ''));
    } catch (error) {
      emit(DepositErrorState("$error"));
    }
  }



}
