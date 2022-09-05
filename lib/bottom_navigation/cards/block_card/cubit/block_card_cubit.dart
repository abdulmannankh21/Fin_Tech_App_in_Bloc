import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/model/block_card_model.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/repository/block_card_repository.dart';

import 'package:flutter_app/core/errors/htp_custom_error.dart';

part 'block_card_state.dart';

class BlockcardCubit extends Cubit<BlockcardState> {
  final BlockCardRepository repository;
  BlockcardCubit({required this.repository}) : super(BlockcardInitialState());

  Future<void> blockcard() async {
    try {
      emit(BlockcardLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.blockCard();
      emit(BlockcardSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on HtpCustomError catch (e) {
      emit(BlockcardErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(BlockcardErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
