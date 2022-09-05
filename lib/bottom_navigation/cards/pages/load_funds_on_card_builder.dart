import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/transaction_error.dart';
import 'package:flutter_app/bottom_navigation/transaction_success.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/cubit/load_funds_on_card_cubit.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';
import 'package:get/get.dart';


class LoadFundsOnCardBuilder extends StatefulWidget {
  final String cardId;
  final String currentCurrency;
  const LoadFundsOnCardBuilder({
    Key? key,
    required this.cardId,
    required this.currentCurrency,
  }) : super(key: key);

  @override
  State<LoadFundsOnCardBuilder> createState() => _LoadfundsoncardBuilderState();
}

class _LoadfundsoncardBuilderState extends State<LoadFundsOnCardBuilder> {
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<LoadfundsoncardCubit, LoadfundsoncardState>(
        listener: (context, state) {
          if (state is LoadfundsoncardErrorState) {
            if(state.errorMessage == Constant.tokenExpired){
              Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
            }else{
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionError(message: state.errorMessage)));
            }

          } else if (state is LoadfundsoncardSuccesstate) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionSuccess(message: state.model.status!.message!)));
            
          }
        },
        builder: (context, state) {
          if (state is LoadfundsoncardLoadingState) {
            return const LoadingScreen();
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Column(
                      children: [
                        SizedBox(height: _size.height * 0.04),
                        NewTextField(controller:_amountController,labelText: "amount".tr,keyboardType: TextInputType.number,),
                        SizedBox(height: _size.height * 0.04),
                      ],
                    ),
                  ),
                  SizedBox(height: _size.height * 0.05),
                  Container(
                    margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

                    child: GestureDetector(
                        onTap: () {
                          context.read<LoadfundsoncardCubit>().loadfundsoncard(
                            cardId: widget.cardId,
                            amount: _amountController.text,
                            currency: widget.currentCurrency,
                          );
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
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
