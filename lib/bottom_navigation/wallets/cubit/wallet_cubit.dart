import 'package:equatable/equatable.dart';

import 'package:flutter_app/bottom_navigation/wallets/model/wallet_details_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/repository/wallet_screen_repo.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  final WalletRepository repository;
  WalletCubit({required this.repository})
      : super(WalletInitialState());

  void getWalletDetails() async {
    try {
      emit(WalletLoadingState("Loading card..."));
      final _model = await repository.getWalletDetails();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      print(_model);
      emit(WalletSuccessState(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(WalletErrorState(e.message ?? ''));
    } catch (error) {
      emit(WalletErrorState("$error"));
    }
  }



}