import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_app/bottom_navigation/transaction_error.dart';
import 'package:flutter_app/bottom_navigation/wallets/cubit/wallet_cubit.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/data/keys/keys.dart';
import 'package:flutter_app/core/services/response_model/response_model.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';
import 'package:dio/dio.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';


import '../../../../../../core/utils/commen_extensions.dart';
import 'add_fund/cubit/add_fund_wallet_cubit.dart';
import 'approval_screen.dart';

class WalletAddFund extends StatefulWidget {


  const WalletAddFund({Key? key,
  }) : super(key: key);

  @override
  _WalletAddFundState createState() => _WalletAddFundState();
}

class _WalletAddFundState extends State<WalletAddFund> {
  final TextEditingController _otpController = TextEditingController();


  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<WalletFundCubit,WalletFundState>(
        listener: (context, state) {
          if (state is WalletFundErrorState) {
            if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken ){
              Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
            }else{
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionError(message: state.errorMessage)));
            }


          } else if (state is WalletFundSuccessState) {

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ApprovalWebView(url: state.model['data']['approval_url'])));
          }
        },
        builder: (context, state) {
          if (state is WalletLoadingState) {
            return const LoadingScreen();
          } else {
            return _addFundScreen(_size, _theme);
          }
        },
      ),
    );
  }

  Widget _addFundScreen(Size _size, ThemeData _theme) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack (
            children: [
              Image.asset('assets/new_image_signin.jpg'),
              Container(
                  margin: EdgeInsets.only(top: 35),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 35, left: 20),
                  child: Row(

                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back,color: Colors.white,)),
                      SizedBox(width: 40,),
                      Text(
                        "add_funds".tr,
                        style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
          SizedBox(height: _size.height * 0.1),

          Container(
              margin: EdgeInsets.only(left:_size.height * 0.02,right: _size.height * 0.02),
              child :NewTextField(
                controller: _otpController,
                labelText: "enter_amount".tr,
                keyboardType: TextInputType.number,
              )),
          SizedBox(height: _size.height * 0.15),
          Container(
            margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

            child: GestureDetector(
                onTap: () {
                  if(_otpController.text.isNotEmpty){
                    context.read<WalletFundCubit>().addFunds(_otpController.text);
                  }else{
                    "please_enter_the_amount".tr.showSnackBar(context);
                  }
                },
                child: Stack(children: [
                  Container(
                    width: _size.width*0.8,
                    height: _size.height*0.08,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.indigoAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "add_funds".tr,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 100, child: Icon(Icons.arrow_forward,color: Colors.white,))
                      ],
                    ),
                  ),
                  Container(
                    width: _size.width*0.8,
                    height: 20,
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        topRight: Radius.circular(80),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        color: ConstantColors.welcome_sign_in_second_circle,
                        width: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: 25,
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          // topLeft: Radius.circular(5)
                          topRight: Radius.circular(28)
                      ),
                      child: Container(
                        color: ConstantColors.welcome_sign_in_first_circle,
                        alignment: Alignment.centerRight,
                        width: 25,
                      ),
                    ),
                  ),
                ])),
          ),
          SizedBox(height: _size.height * 0.04),

        ],
      ),
    );
  }
}
