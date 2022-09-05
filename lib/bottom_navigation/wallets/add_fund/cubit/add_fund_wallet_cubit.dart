import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_fund/repository/add_fund_wallet_repository.dart';
import 'package:flutter_app/bottom_navigation/wallets/model/wallet_details_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/repository/wallet_screen_repo.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'add_fund_wallet_state.dart';

class WalletFundCubit extends Cubit<WalletFundState> {
  final WalletFundRepository repository;
  WalletFundCubit({required this.repository})
      : super(WalletFundInitialState());


  void addFunds(String amount) async {
    try {
      emit(WalletFundLoadingState("Loading card..."));
      final _model = await repository.addfunds(amount);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(WalletFundSuccessState(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(WalletFundErrorState(e.message ?? ''));
    } catch (error) {
      emit(WalletFundErrorState("$error"));

    }
  }


}