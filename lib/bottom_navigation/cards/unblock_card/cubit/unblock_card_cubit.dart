import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/unblock_card/model/unblock_card_model.dart';
import 'package:flutter_app/bottom_navigation/cards/unblock_card/repository/unblock_card_repository.dart';

import 'package:flutter_app/core/errors/htp_custom_error.dart';

part 'unblock_card_state.dart';

class UnblockcardCubit extends Cubit<UnblockcardState> {
  final UnblockcardRepository repository;
  UnblockcardCubit({required this.repository})
      : super(UnblockcardInitialState());

  Future<void> unblockcard() async {
    try {
      emit(UnblockcardLoadingState(
        loadingMessage: "Loading...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.unblockCard();
      emit(UnblockcardSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on HtpCustomError catch (e) {
      emit(UnblockcardErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(UnblockcardErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
