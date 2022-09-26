import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/mastercard/pages/load_funds_screen.dart';
import 'package:flutter_app/bottom_navigation/mastercard/repo/mastercard_repo.dart';

import '../../../../core/errors/htp_custom_error.dart';
import '../../../../core/utils/shared_preferences.dart';
import '../../../../src/constant/constant.dart';
import '../../cubit/mastercard_cubit.dart';
import '../../model/common_response.dart';

part 'mastercard_load_funds_state.dart';

class MasterCardLoadFundCubit extends Cubit<MasterCardLoadFundState> {
  final MasterCardRepository repository;
  MasterCardLoadFundCubit({required this.repository})
      : super(MasterCardInitialState());



  void loadFunds({required double amount} ) async {
    try {

      emit(MasterCardLoadFundLoadingState("Loading card..."));
      final _model = await repository.loadfunds(amount);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(MasterCardLoadFundSuccessState(_model,_email,_token));


    } on HtpCustomError catch (e) {
      emit(MasterCardLoadFundErrorState(e.message ?? ''));
    } catch (error) {
      emit(MasterCardLoadFundErrorState("$error"));
    }
  }



}
