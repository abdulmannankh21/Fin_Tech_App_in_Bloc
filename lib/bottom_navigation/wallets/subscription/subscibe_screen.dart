


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/transaction_error.dart';
import 'package:flutter_app/bottom_navigation/transaction_success.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/model/get_plans_model.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';

import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/get_plans_cubit.dart';
import 'cubit/subscribe_cubit.dart';


class SubscribeScreen extends StatefulWidget {
  String coupon;
  Subscription plan;
  SubscribeScreen({Key? key,required this.coupon,required this.plan}) : super(key: key);

  @override
  _SubscribeScreenState createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {



  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<SubscribeCubit>().subscribe(widget.coupon, widget.plan);
    });
  }



  @override
  Widget build(BuildContext context) {

    final _size = MediaQuery.of(context).size;
    final _themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<SubscribeCubit, SubscribeState>(
          listener: (context, state) {
            if (state is SubscribeErrorState) {
              if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken){
                Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
              }else{
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionError(message: state.errorMessage)));
              }
            }else if(state is SubscribeSuccessState){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionSuccess(message: state.model['message'])));
          }


      },
          builder: (context, state) {
            if (state is SubscribeLoadingState) {
              return const LoadingScreen();

            }else{
              return Container();
            }

          },

        ),
      ),
    );
  }
}
