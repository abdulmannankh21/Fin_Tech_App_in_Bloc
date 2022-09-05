import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/user/create_business/model/create_business_model.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';
import 'package:flutter_app/user/create_wallet/repository/create_wallet_repo.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';

part 'create_business_state.dart';

class CreateBusinessCubit extends Cubit<CreateBusinessState> {
  final CreateWalletRepo repository;

  CreateBusinessCubit({
    required this.repository,
  }) : super(CreateBusinessInitialState());

  void createBusiness({
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
    required String companyName,
    required String sourceOfFunds,
    required String sourceOfFundsOther,
    required String registrationNumber,
    required String companyPosition,
    required String incorporation,
    required String industry,
    required bool acceptedTerms,


  }) async {
    try {
      emit(BusinessCreatedLoading("Loading..."));

      if (country.isEmpty) {
        emit(BusinessCreatedError(
          errorMessage: "Please select country name.",
          dateTime: DateTime.now(),
        ));
      } else if (mothersName.isEmpty ||
          line1.isEmpty ||
          city.isEmpty ||
          state.isEmpty ||
          zip.isEmpty ||
          dob.isEmpty) {
        emit(BusinessCreatedError(
          errorMessage: "Please enter a valid data to proceed(Business).",
          dateTime: DateTime.now(),
        ));
      } else{
          ///Company

            final _model = await repository.createBusinesslWallet(
              city: city,
              country: country,
              dob: dob,
              line1: line1,
              mothersName: mothersName,
              state: state,
              zip: zip,
              type: "company",
              email: email,
              firstName: firstName,
              lastName: lastName,
              password: password,
              phoneNumber: phoneNumber,
              companyName: companyName,
              sourceOfFunds:sourceOfFunds,
              sourceOfFundsOther:sourceOfFundsOther,
              acceptedTerms:acceptedTerms,
              registrationNumber: registrationNumber,
              incorporation: incorporation,
              companyPosition: companyPosition,
              industry: industry,
              phoneCode: phoneCode,
              countryCode:countryCode

            );

            emit(BusinessCreatedSuccessfully(
              model: _model,
              dateTime: DateTime.now(),
            ));

        }
      } on HtpCustomError catch (e) {
      print(e);
      emit(BusinessCreatedError(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      print(error);
      emit(BusinessCreatedError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
