import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/create_addon_cards/model/issue_card_model.dart';
import 'package:flutter_app/bottom_navigation/cards/create_addon_cards/repository/issue_repository.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';

part 'issue_card_state.dart';

class IssuecardCubit extends Cubit<IssuecardState> {
  final IssueCardRepository repository;
  IssuecardCubit({required this.repository}) : super(IssuecardInitialState());

  Future<void> issueCard(String name, String currency) async {
    try {
      emit(IssuecardLoadingState(
        loadingMessage: "fetching cards...",
        dateTime: DateTime.now(),
      ));
      final _model =
          await repository.issueCard(name: name, currency: currency);
      emit(IssuecardSuccesstate(_model));
    } on HtpCustomError catch (e) {
      emit(IssuecardErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(IssuecardErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
