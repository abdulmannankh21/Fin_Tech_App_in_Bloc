import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/model/card_transaction_model.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/repository/card_transaction_repository.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';



part 'card_transaction_state.dart';

class CardTransactionCubit extends Cubit<CardTransactionState> {
  final CardTransactionRepository repository;
  CardTransactionCubit({required this.repository})
      : super(CardTransactionInitialState()) {
  }

  void gteCardTransaction(String cardid) async {
    try {
      emit(CardTransactionLoadingState(
        loadingMessage: "Fetching transaction...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.gteCardTransaction(cardid);
      emit(CardTransactionSuccesstate(_model));
    } on HtpCustomError catch (e) {
      emit(CardTransactionErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(CardTransactionErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> searchTransaction(
      List<TransactionModel>? allTrasanction, String searchText) async {
    final List<TransactionModel>? _models = [];
    try {
      emit(CardTransactionLoadingState(
        loadingMessage: "Searching transaction...",
        dateTime: DateTime.now(),
      ));
      await Future.delayed(const Duration(milliseconds: 100));
      if (searchText != '') {
        if (allTrasanction != null) {
          allTrasanction.forEach((e) {
            if (e != null) {
              
                if (getTitle(e)
                    .toLowerCase()
                    .contains(searchText.toLowerCase()) ||
                    processAmount(e.transactionAmount!.amount).contains(searchText.toLowerCase())) {
                  _models?.add(e);
                }
              
            }
          });
        }
      }
      emit(SearchResultLoaded(allTransaction: _models));
    } catch (e) {
      emit(CardTransactionErrorState(
        errorMessage: "$e",
        dateTime: DateTime.now(),
      ));
    }
  }
  String getTitle(TransactionModel model) {
    if (model.additionalFields!.sender != null) {
      return model.additionalFields!.sender!;
    } else if (model.additionalFields!.destinationInstrumentFriendlyName !=
        null) {
      return model.additionalFields!.destinationInstrumentFriendlyName!;
    } else if(model.additionalFields!.beneficiaryName != null){
      return model.additionalFields!.beneficiaryName!;
    }else if(model.additionalFields!.sourceInstrumentFriendlyName != null){
      return model.additionalFields!.sourceInstrumentFriendlyName!;
    }else if (model.additionalFields!.merchantName !=
        null) {
      return model.additionalFields!.merchantName!;
    } else if(model.additionalFields!.senderReference != null){
      return model.additionalFields!.senderReference!;
    }else if(model.additionalFields!.authorisationState != null){
      return model.additionalFields!.authorisationState!;
    }else if (model.additionalFields!.systemTransactionType !=
        null) {
      return model.additionalFields!.systemTransactionType!;
    } else if(model.additionalFields!.sourceIdentityName != null){
      return model.additionalFields!.sourceIdentityName!;
    }else if(model.additionalFields!.sourceIdentityType != null){
      return model.additionalFields!.sourceIdentityType!;
    }else if (model.additionalFields!.sourceInstrumentType !=
        null) {
      return model.additionalFields!.sourceInstrumentType!;
    } else if(model.additionalFields!.merchantTransactionType != null){
      return model.additionalFields!.merchantTransactionType!;
    }else if(model.additionalFields!.authorisationCode != null){
      return model.additionalFields!.authorisationCode!;
    } else if(model.additionalFields!.authorisationRelatedId != null){
      return model.additionalFields!.authorisationRelatedId!;
    }else if(model.additionalFields!.beneficiaryAccount != null){
      return model.additionalFields!.beneficiaryAccount!;
    }else if (model.additionalFields!.beneficiaryBankCode !=
        null) {
      return model.additionalFields!.beneficiaryBankCode!;
    } else if(model.additionalFields!.chargeFeeType != null){
      return model.additionalFields!.chargeFeeType!;
    }else if(model.additionalFields!.destinationInstrumentId != null){
      return model.additionalFields!.destinationInstrumentId!;
    }else if (model.additionalFields!.exchangeRate !=
        null) {
      return model.additionalFields!.exchangeRate!;
    } else if(model.additionalFields!.forexFeeAmount != null){
      return model.additionalFields!.forexFeeAmount!;
    }else if(model.additionalFields!.forexFeeCurrency != null){
      return model.additionalFields!.forexFeeCurrency!;
    }else if (model.additionalFields!.forexPaddingAmount !=
        null) {
      return model.additionalFields!.forexPaddingAmount!;
    } else if(model.additionalFields!.forexPaddingCurrency != null){
      return model.additionalFields!.forexPaddingCurrency!;
    }else if(model.additionalFields!.destinationInstrumentType != null){
      return model.additionalFields!.destinationInstrumentType!;
    }else if(model.additionalFields!.mandateId != null){
      return model.additionalFields!.mandateId!;
    } else if(model.additionalFields!.merchantCategoryCode != null){
      return model.additionalFields!.merchantCategoryCode!;
    }else if(model.additionalFields!.merchantId != null){
      return model.additionalFields!.merchantId!;
    }else if (model.additionalFields!.merchantReference !=
        null) {
      return model.additionalFields!.merchantReference!;
    } else if(model.additionalFields!.merchantTerminalCountry != null){
      return model.additionalFields!.merchantTerminalCountry!;
    }else if(model.additionalFields!.note != null){
      return model.additionalFields!.note!;
    }else if (model.additionalFields!.relatedCardId !=
        null) {
      return model.additionalFields!.relatedCardId!;
    } else if(model.additionalFields!.relatedTransactionId != null){
      return model.additionalFields!.relatedTransactionId!;
    }else if(model.additionalFields!.relatedTransactionIdType != null){
      return model.additionalFields!.relatedTransactionIdType!;
    }else if (model.additionalFields!.senderIban !=
        null) {
      return model.additionalFields!.senderIban!;
    } else if(model.additionalFields!.settlementRelatedId != null){
      return model.additionalFields!.settlementRelatedId!;
    }else if(model.additionalFields!.sourceIdentityId != null){
      return model.additionalFields!.sourceIdentityId!;
    }else if(model.additionalFields!.sourceInstrumentId != null){
      return model.additionalFields!.sourceInstrumentId!;
    }else{
      return "Transaction";
    }
  }

  String processAmount(double amount){
    double amt = amount/100;
    String newAmount = amt.toStringAsFixed(2);
    return newAmount;
  }
}
