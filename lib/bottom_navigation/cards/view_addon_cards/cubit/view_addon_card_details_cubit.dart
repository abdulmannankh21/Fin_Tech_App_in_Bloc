import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/model/card_details_model.dart';
import 'package:flutter_app/bottom_navigation/cards/view_addon_cards/repository/view_addon_card_details_repository.dart';


import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';




part 'view_addon_card_details_state.dart';

class ViewAddOnCardDetailsCubit extends Cubit<ViewAddOnCardDetailsState> {
  final ViewAddOnCardDetailsRepository repository;
  ViewAddOnCardDetailsCubit({required this.repository})
      : super(ViewAddOnCardDetailsInitialState());

  void carddetails(String cardid) async {
    try {
      emit(ViewAddOnCardDetailsLoadingState("Loading card..."));
      final _model = await repository.cardDetails(cardid);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(ViewAddOnCardDetailsSuccesstate(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(ViewAddOnCardDetailsErrorState(e.message ?? ''));
    } catch (error) {
      emit(ViewAddOnCardDetailsErrorState("$error"));
    }
  }
}
