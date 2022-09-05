import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/user/create_wallet/model/create_wallet_mode.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/user/registeration/verify_email/model/verify_email_model.dart';
import 'package:flutter_app/user/registeration/verify_email/repository/verify_email_repo.dart';


part 'verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  final VerifyEmailRepo repository;

  VerifyEmailCubit({
    required this.repository,
  }) : super(VerifyEmailInitialState());

  void verifyEmail({
    required String vericode,
    required String email,
    required String token,
  }) async {
    try {
      emit(VerifyEmailLoading("Loading..."));


          final _model = await repository.verifyEmail(
            vericode: vericode,
            token:token,
            email:email,
          );

          emit(VerifyEmailSuccessfully(
            model: _model,
            dateTime: DateTime.now(),
          ));
    } on HtpCustomError catch (e) {
      print(e);
      emit(VerifyEmailError(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      print(error);
      emit(VerifyEmailError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
