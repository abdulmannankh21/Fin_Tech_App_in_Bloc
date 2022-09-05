import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/addon_cards/model/addon_card_model.dart';
import 'package:flutter_app/bottom_navigation/cards/addon_cards/repository/addon_card_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/model/block_card_model.dart';


import 'package:flutter_app/core/errors/htp_custom_error.dart';

part 'addon_card_state.dart';

class AddOnCardCubit extends Cubit<AddOnCardState> {
  final AddOnCardRepository repository;
  AddOnCardCubit({required this.repository}) : super(AddOnCardInitialState());

  Future<void> getAddOnCards() async {
    try {
      emit(AddOnCardLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.getAddOnCards();
      emit(AddOnCardSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on HtpCustomError catch (e) {
      emit(AddOnCardErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(AddOnCardErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
