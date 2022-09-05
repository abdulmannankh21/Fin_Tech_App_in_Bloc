import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';
import 'package:flutter_app/user/create_wallet/repository/create_wallet_repo.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';

part 'create_wallet_state.dart';

class CreateWalletCubit extends Cubit<CreateWalletState> {
  final CreateWalletRepo repository;
  final LoginCubit loginCubit;
  CreateWalletCubit({
    required this.repository,
    required this.loginCubit,
  }) : super(CreateWalletInitialState());

  void createWallet({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String phoneCode,
    required String type,
    required String mothersName,
    required String line1,
    required String city,
    required String state,
    required String country,
    required String zip,
    required String dob,
    required String countryCode,
    required String occupation,
    required String sourceOfFunds,
    required String sourceOfFundsOther,
    required bool acceptedTerms,


  }) async {
    try {
      emit(WalletCreatedLoading("Loading..."));

      if (country.isEmpty) {
        emit(WalletCreatedError(
          errorMessage: "Please select country name.",
          dateTime: DateTime.now(),
        ));
      } else if (mothersName.isEmpty ||
          line1.isEmpty ||
          city.isEmpty ||
          state.isEmpty ||
          zip.isEmpty ||
          dob.isEmpty) {
        emit(WalletCreatedError(
          errorMessage: "Please enter a valid data to proceed.",
          dateTime: DateTime.now(),
        ));
      } else {

          final _model = await repository.createPersonalWallet(
            city: city,
            country: country,
            dob: dob,
            line1: line1,
            mothersName: mothersName,
            state: state,
            zip: zip,
            type: "person",
            phoneCode: phoneCode,
            email: email,
            firstName: firstName,
            lastName: lastName,
            password: password,
            phoneNumber: phoneNumber,
            countryCode : countryCode,
            occupation: occupation,
            sourceOfFunds:sourceOfFunds,
            sourceOfFundsOther:sourceOfFundsOther,
            acceptedTerms:acceptedTerms,


          );
          await MySharedPreferences().setStringeanValue(
            key: Constant.email,
            value: email,
          );

            await MySharedPreferences().setStringeanValue(
              key: Constant.password,
              value: password,
            );

          //await loginCubit.login(email: email, password: password);

          emit(WalletCreatedSuccessfully(
            model: _model,
            dateTime: DateTime.now(),
          ));

      }
    } on HtpCustomError catch (e) {
      print(e);
      emit(WalletCreatedError(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      print(error);
      emit(WalletCreatedError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
