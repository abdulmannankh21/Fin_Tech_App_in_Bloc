import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/user/registeration/transaction_webview/cubit/transaction_webview_cubit.dart';
import 'package:flutter_app/user/registeration/verify_email/ui/verify_email.dart';
import 'package:flutter_app/user/registeration/verify_mobile/ui/verify_mobile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'kyc_webview.dart';



class Example extends StatefulWidget {
  final email,token,actionType;
  const Example({Key? key, this.email,this.token,this.actionType, }) : super(key: key);
  @override
  createState() => _ExampleState();
}
class _ExampleState extends State<Example> {

  @override
  void initState() {
    context.read<TransactionWebviewCubit>().checkStatus(
      email: widget.email,
      token: widget.token,
    );
    }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(

      body: BlocConsumer<TransactionWebviewCubit,TransactionWebviewState>(
        listener: (context, state) {
          if(state is TransactionWebviewVerifyEmail){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => VerifyEmail(email: widget.email,token: widget.token,actionType: widget.actionType)));
          }else if(state is TransactionWebviewVerifyMobile){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => VerifyMobile(email: widget.email,token: widget.token,actionType: widget.actionType)));
          }else if(state is TransactionWebviewKYC){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => KYCWebViewContainer(kycreference: state.kyctoken,email: widget.email,token: widget.token,actionType: widget.actionType,)));
          }else if(state is TransactionWebviewSessionInvalid){
            Navigator.pushReplacementNamed(context, ScreenNames.login);
          }else if (state is TransactionWebviewError) {
            state.errorMessage.showSnackBar(context);
          } else if (state is TransactionWebviewSuccessfully) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              ScreenNames.bottomNavigationHome,
                  (Route<dynamic> route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is TransactionWebviewLoading) {
            return const LoadingScreen();
          } else {
            return _transactionScreen(_size, _theme,context);
          }
        },
      ),
    );
  }


  Widget _transactionScreen(Size _size, ThemeData _theme,BuildContext context) {
    return Column(

    );
  }



}