import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/model/load_funds_on_card_model.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/repository/load_funds_on_card_repo.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';

part 'load_funds_on_card_state.dart';

class LoadfundsoncardCubit extends Cubit<LoadfundsoncardState> {
  final LoadFundsOnCardRepository repository;
  LoadfundsoncardCubit({required this.repository})
      : super(LoadfundsoncardInitialState());

  void loadfundsoncard({
    required String cardId,
    required String amount,
    required String currency,
  }) async {
    try {
      emit(LoadfundsoncardLoadingState(
        loadingMessage: "Loading...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.loadFundsOnCard(
        cardId: cardId,
        amount: amount,
        currency: currency,
      );
      emit(LoadfundsoncardSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on HtpCustomError catch (e) {
      emit(LoadfundsoncardErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(LoadfundsoncardErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
