


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/bottom_navigation/wallets/subscription/cubit/subscribe_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/fees_webview.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/subscibe_screen.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';

import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/home/shimmer_effect/card_shimmer.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import 'cubit/get_plans_cubit.dart';


class PlanScreen extends StatefulWidget {
  String planId;
  PlanScreen({Key? key,required this.planId}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {

  final couponController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<PlanCubit>().getPlans();
    });
  }



  @override
  Widget build(BuildContext context) {

    final _size = MediaQuery.of(context).size;
    final _themeData = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: CustomAppBar(title: "plans".tr,),
      body: SafeArea(
        child: BlocConsumer<PlanCubit, PlanState>(
          listener: (context, state) {
            if (state is PlanErrorState) {
              if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken){
                Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
              }
            }
          },
          builder: (context, state) {
            if (state is PlanLoadingState) {
              return Column(

                children: [
                  ShimmerEffect.cardShimmer(
                    size: _size,
                    cardCount: 1,
                    autoPlay: false,
                  ),
                  const SizedBox(height: 12.0),
                  Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.4),
                    highlightColor: Colors.grey.withOpacity(0.7),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Container(
                            height: _size.height * 0.08,
                            width: _size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }else if(state is PlanSuccessState){
              return SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    height: _size.height,
                    width: _size.width,
                    padding: EdgeInsets.only(top: 5),
                    child: ListView.builder(
                      itemCount: state.model.plans.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (context, index) {
                        final _model =
                        state.model.plans[index];
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 6.0,
                              ),
                              child: Card(
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  width: _size.width * 0.9,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(12.0),
                                  ),
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(_model.plan_name!,
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                    color: ConstantColors.welcome_sign_up_text_color)),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                                  child: SizedBox(
                                                    width: _size.width*0.6,
                                                    child: Divider(
                                                      color: ConstantColors.welcome_sign_in_second_circle,
                                                    ),
                                                  ),
                                                ),
                                                Icon(Icons.done,color:ConstantColors.welcome_sign_in_second_circle),
                                                SizedBox(
                                                  width: _size.width * 0.1,
                                                  child: Divider(
                                                    color: Colors.indigo,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                style: Theme.of(context).textTheme.bodyLarge,
                                                children: [
                                                  TextSpan(
                                                      text: _model.currency! +" " + _model.plan_price!,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(2, 2, 47, 100),
                                                          fontSize: 28,
                                                          fontWeight: FontWeight.bold)),
                                                  WidgetSpan(
                                                    child: Icon(Icons.keyboard_arrow_down_rounded),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: 200,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: ConstantColors.appBar),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    alignment: Alignment.topRight,
                                                    child: Icon(
                                                      CupertinoIcons.hand_thumbsup_fill,
                                                      color: ConstantColors.welcome_sign_in_second_circle,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(_model.virtual_card!,
                                                            style: GoogleFonts.montserrat(
                                                                color: Color.fromRGBO(4, 4, 80, 100),
                                                                fontWeight: FontWeight.bold)),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "virtual_cards".tr,
                                                          style: TextStyle(color: Colors.black26),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(_model.bank!,
                                                            style: GoogleFonts.montserrat(
                                                                color: Color.fromRGBO(4, 4, 80, 100),
                                                                fontWeight: FontWeight.bold)),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "bank_account".tr,
                                                          style: TextStyle(color: Colors.black38),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Padding(
                                                padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                                                child: Divider(
                                                  color: ConstantColors.primaryLightCyan,
                                                  thickness: 2,
                                                )),
                                            const SizedBox(
                                              height: 15,
                                            ),


                                          ],
                                        ),

                                        _model.id == widget.planId ? SizedBox(
                                          height: 55,
                                        ):Padding(padding: EdgeInsets.only(left: 10,right: 10),
                                            child: NewTextField(
                                              controller: couponController, labelText: 'coupon_code'.tr,

                                            )),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        _model.id == widget.planId ? SizedBox(
                                          height: 55,
                                        ):XenioPrimaryButton(
                                          onTap: () {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => AlertDialog(
                                                title: Text('subscription_confirmation'.tr),
                                                content:  Text('please_ensure_you_have_sufficient_balance_in_your_master_eur_account'.tr),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                                    child: Text('cancel'.tr),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {

                                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SubscribeScreen(coupon: couponController.text.toString(), plan: _model)));

                                                    },
                                                    child:  Text('ok'.tr),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          width: _size.width* 0.5,
                                          buttonText: "subscribe".tr,
                                          color: ConstantColors.primaryCyan,
                                          buttonTextColor: Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),


                                      ],
                                    ),
                                  ),

                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 45,
                            ),

                            XenioPrimaryButton(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FeesWebView(planId: _model.id)));

                              },

                              width: _size.width* 0.5,
                              buttonText: "fee".tr,
                              color: ConstantColors.primaryCyan,
                              buttonTextColor: Colors.white,
                            ),
                          ],
                        );
                      },
                    ),
                  ));
            }else {
              return Container();
            }

          },

        ),
      ),
    );
  }
}
