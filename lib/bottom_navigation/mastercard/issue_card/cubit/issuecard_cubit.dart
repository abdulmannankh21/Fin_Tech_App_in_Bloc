import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/mastercard/cubit/mastercard_cubit.dart';

import '../../../../core/errors/htp_custom_error.dart';
import '../../../../core/utils/shared_preferences.dart';
import '../../../../src/constant/constant.dart';
import '../../model/common_response.dart';
import '../../repo/mastercard_repo.dart';
part 'issuecard_state.dart';


class MasterCardIssueCubit extends Cubit<MasterCardIssueState> {
  final MasterCardRepository repository;
  MasterCardIssueCubit({required this.repository})
      : super(MasterCardIssueInitialState());


  void issueCard({
  required String addressLine1,
    String? addressLine2,
    required String city,
    required String state,
    required String country,
    required String zipCode

}) async {
    try {
      emit(MasterCardIssueLoadingState("Loading card..."));
      final _model = await repository.issueCard(addressLine1: addressLine1,addressLine2: addressLine2,city: city,country: country,state: state,zipCode: zipCode);
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(MasterCardIssueSuccessState(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(MasterCardIssueErrorState(e.message ?? ''));
    } catch (error) {
      emit(MasterCardIssueErrorState("$error"));
    }
  }



}
