import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/model/card_transaction_model.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/repository/card_transaction_repository.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/src/home/transaction/model/home_transaction_model.dart';
import 'package:flutter_app/src/home/transaction/repository/home_transaction_repository.dart';



part 'home_transaction_state.dart';

class HomeTransactionCubit extends Cubit<HomeTransactionState> {
  final HomeTransactionRepository repository;
  HomeTransactionCubit({required this.repository})
      : super(HomeTransactionInitialState()) {
  }

  void getTransaction() async {
    try {
      emit(HomeTransactionLoadingState(
        loadingMessage: "Fetching transaction...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.getTransaction();
      emit(HomeTransactionSuccesstate(_model));
    } on HtpCustomError catch (e) {
      emit(HomeTransactionErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(HomeTransactionErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> searchTransaction(
      List<HomeWalletTransactionDetails>? allTrasanction, String searchText) async {
    final List<HomeWalletTransactionDetails>? _models = [];
    try {
      emit(HomeTransactionLoadingState(
        loadingMessage: "Searching transaction...",
        dateTime: DateTime.now(),
      ));
      await Future.delayed(const Duration(milliseconds: 100));
      if (searchText != '') {
        if (allTrasanction != null) {
          allTrasanction.forEach((e) {
            if (e != null) {
              
                if (e.description!
                    .toLowerCase()
                    .contains(searchText.toLowerCase()) || e.amount!.contains(searchText.toLowerCase())) {
                  _models?.add(e);
                }
              
            }
          });
        }
      }
      emit(HomeSearchResultLoaded(allTransaction: _models));
    } catch (e) {
      emit(HomeTransactionErrorState(
        errorMessage: "$e",
        dateTime: DateTime.now(),
      ));
    }
  }

  String processAmount(double amount){
    double amt = amount/100;
    String newAmount = amt.toStringAsFixed(2);
    return newAmount;
  }
}
