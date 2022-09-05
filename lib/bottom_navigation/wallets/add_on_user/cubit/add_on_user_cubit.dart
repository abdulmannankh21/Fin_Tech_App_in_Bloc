import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/model/card_details_model.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/repository/card_details_repository.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/model/add_on_user_model.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/repository/add_on_user_repo.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


part 'add_on_user_state.dart';

class AddOnUserCubit extends Cubit<AddOnUserState> {
  final AddOnUserRepository repository;
  AddOnUserCubit({required this.repository})
      : super(AddOnUserInitialState());

  void getAddOnUserList() async {
    try {
      emit(AddOnUserLoadingState("Loading card..."));
      final _model = await repository.getAddOnUsers();
      final _email = await MySharedPreferences().getStringValue(Constant.email);
      final _token = await MySharedPreferences().getStringValue(Constant.logintoken);
      emit(AddOnUserListSuccesstate(_model,_email,_token));
    } on HtpCustomError catch (e) {
      emit(AddOnUserErrorState(e.message ?? ''));
    } catch (error) {
      emit(AddOnUserErrorState("$error"));
    }
  }
  void createAddOnUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String phoneCode,
    required String mothersName,
    required String line1,
    required String city,
    required String state,
    required String country,
    required String zip,
    required String dob,
    required String countryCode,


  }) async {
    try {
      emit(AddOnUserLoadingState("Loading..."));


        final _model = await repository.createAddOnUser(
          city: city,
          country: country,
          dob: dob,
          line1: line1,
          mothersName: mothersName,
          state: state,
          zip: zip,
          phoneCode: phoneCode,
          email: email,
          firstName: firstName,
          lastName: lastName,
          password: password,
          phoneNumber: phoneNumber,
          countryCode : countryCode,
        );
        emit(AddOnUserCreateSuccesstate(_model));


    } on HtpCustomError catch (e) {
      print(e);
      emit(AddOnUserErrorState(e.message));
    } catch (error) {
      print(error);
      emit(AddOnUserErrorState("$error"));
    }
  }
}
