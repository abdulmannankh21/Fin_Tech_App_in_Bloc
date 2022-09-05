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

import '../repository/transaction_repo.dart';


part 'transaction_webview_state.dart';

class TransactionWebviewCubit extends Cubit<TransactionWebviewState> {
  final TransactionRepo repository;

  TransactionWebviewCubit({
    required this.repository,
  }) : super(TransactionWebviewInititalState());

  void checkStatus({
    required String email,
    required String token,
  }) async {
    try {
      emit(TransactionWebviewLoading("Loading..."));


          final _model = await repository.checkStatus(
            token:token,
            email:email,
          );

          if(_model['result'] == "Emailverification"){
            emit(TransactionWebviewVerifyEmail(
              message: _model['message'],
              dateTime: DateTime.now(),
            ));
          }else if(_model['result'] == "KYC PENDING"){
        emit(TransactionWebviewKYC(
          message: _model['message'],
          kyctoken: _model['kyctoken'],
          dateTime: DateTime.now(),
        ));
      }else if(_model['result'] == "Phoneverification"){
            emit(TransactionWebviewVerifyMobile(
              message: _model['message'],
              dateTime: DateTime.now(),
            ));
          }else{
           await MySharedPreferences().setStringeanValue(
              key: Constant.email,
              value: email,
            );
            await MySharedPreferences().setStringeanValue(
              key: Constant.logintoken,
              value: token,
            );
            emit(TransactionWebviewSuccessfully(
              model: _model,
              dateTime: DateTime.now(),
            ));
          }
    } on HtpCustomError catch (e) {

        emit(TransactionWebviewError(
          errorMessage: e.message ?? '',
          dateTime: DateTime.now(),
        ));

    } catch (error) {
      print(error);
      emit(TransactionWebviewError(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
