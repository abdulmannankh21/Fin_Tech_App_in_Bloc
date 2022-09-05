import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/registeration/verify_email/model/verify_email_model.dart';
import 'package:flutter_app/user/registeration/verify_email/repository/verify_email_repo.dart';
import 'package:flutter_app/user/registeration/verify_mobile/model/verify_mobile_model.dart';
import 'package:flutter_app/user/registeration/verify_mobile/repository/verify_mobile_repo.dart';


part 'verify_mobile_state.dart';

class VerifyMobileCubit extends Cubit<VerifyMobileState> {
  final VerifyMobileRepo repository;

  VerifyMobileCubit({
    required this.repository,
  }) : super(VerifyMobileInitialState());

  void verifyMobile({
    required String vericode,
    required String email,
    required String token,
  }) async {
    try {
      emit(VerifyMobileLoading("Loading..."));


          final _model = await repository.verifyEmail(
            vericode: vericode,
            token:token,
            email:email,
          );

          emit(VerifyMobileSuccessfully(
            model: _model,
            dateTime: DateTime.now(),
          ));
    } on HtpCustomError catch (e) {
      print(e);
      emit(VerifyMobileError(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      print(error);
      emit(VerifyMobileError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
