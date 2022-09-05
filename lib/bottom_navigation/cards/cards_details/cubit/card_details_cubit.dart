import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/model/card_details_model.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/repository/card_details_repository.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


part 'card_details_state.dart';

class CarddetailsCubit extends Cubit<CarddetailsState> {
  final CardDetailsRepository repository;
  CarddetailsCubit({required this.repository})
      : super(CarddetailsInitialState());

  void carddetails() async {
    try {
      emit(CarddetailsLoadingState("Loading card..."));
      final _model = await repository.cardDetails();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(CarddetailsSuccesstate(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(CarddetailsErrorState(e.message ?? ''));
    } catch (error) {
      emit(CarddetailsErrorState("$error"));
    }
  }

  void issueCard() async {
    try {
      emit(CarddetailsLoadingState("Loading card..."));
      final _model = await repository.issueCard();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(IssueCardSuccesstate(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(IssueCardErrorstate(e.message ?? ''));
    } catch (error) {
      emit(IssueCardErrorstate("$error"));
    }
  }

}
