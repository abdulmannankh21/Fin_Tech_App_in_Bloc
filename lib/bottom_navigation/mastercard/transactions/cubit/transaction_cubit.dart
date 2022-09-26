import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/mastercard/pages/load_funds_screen.dart';
import 'package:flutter_app/bottom_navigation/mastercard/repo/mastercard_repo.dart';

import '../../../../core/errors/htp_custom_error.dart';
import '../../../../core/utils/shared_preferences.dart';
import '../../../../src/constant/constant.dart';
import '../../cubit/mastercard_cubit.dart';
import '../../model/common_response.dart';

part 'transaction_state.dart';

class MasterCardTransactionCubit extends Cubit<MasterCardTransactionState> {
  final MasterCardRepository repository;
  MasterCardTransactionCubit({required this.repository})
      : super(MasterCardTransactionInitialState());



  void getCardTransactions() async {
    try {

      emit(MasterCardTransactionLoadingState("Loading card..."));
      final _model = await repository.getCardTransactions();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(MasterCardTransactionSuccessState(_model,_email,_token));


    } on HtpCustomError catch (e) {
      emit(MasterCardTransactionErrorState(e.message ?? ''));
    } catch (error) {
      emit(MasterCardTransactionErrorState("$error"));
    }
  }

  Future<void> searchTransaction(
      List<Entry>? allTrasanction, String searchText) async {
    final List<Entry>? _models = [];
    try {
      emit(MasterCardTransactionLoadingState("Searching transaction..."
      ));
      await Future.delayed(const Duration(milliseconds: 100));
      if (searchText != '') {
        if (allTrasanction != null) {
          allTrasanction.forEach((e) {
            if (e.additionalFields!.merchantName != null) {

              if (e.additionalFields!.merchantName!
                  .toLowerCase()
                  .contains(searchText.toLowerCase()) ||
                  processAmount(double.parse(e.transactionAmount!.amount)).contains(searchText.toLowerCase())) {
                _models?.add(e);
              }

            }
          });
        }
      }
      emit(MasterCardSearchResultLoaded(_models));
    } catch (e) {
      emit(MasterCardTransactionErrorState(
        "$e",
      ));
    }
  }

  String processAmount(double amount){
    double amt = amount/100;
    String newAmount = amt.toStringAsFixed(2);
    return newAmount;
  }

}
