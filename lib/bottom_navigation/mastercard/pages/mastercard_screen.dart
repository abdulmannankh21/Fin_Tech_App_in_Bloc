import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/bottom_navigation/cards/addon_cards/cubit/addon_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/cubit/block_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/cubit/card_details_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/pages/issue_card_builder.dart';
import 'package:flutter_app/bottom_navigation/cards/pages/load_funds_on_card_builder.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/card_transaction_screen.dart';
import 'package:flutter_app/bottom_navigation/cards/unblock_card/cubit/unblock_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/cubit/mastercard_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/pages/load_funds_screen.dart';
import 'package:flutter_app/bottom_navigation/mastercard/pages/mastercard_issue_screen.dart';
import 'package:flutter_app/bottom_navigation/mastercard/pages/mastercard_transaction_screen.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/utils/bottom_pop_up.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/home/bottom_contain.dart';
import 'package:flutter_app/src/home/shimmer_effect/card_shimmer.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MasterCardScreen extends StatefulWidget {
  const MasterCardScreen({Key? key}) : super(key: key);

  @override
  State<MasterCardScreen> createState() => _MasterCardScreenState();
}

class _MasterCardScreenState extends State<MasterCardScreen> {
  bool val = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<MasterCardCubit>().getCardStatus();
    });
    super.initState();
  }

  Future<void> _onRefresh() async {
    context.read<MasterCardCubit>().getCardStatus();
  }
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _themeData = Theme.of(context);
    return BlocConsumer<MasterCardCubit, MasterCardState>(
      listener: (context, state) {


      },
      builder: (context, state) {
        if (state is MasterCardLoadingState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ShimmerEffect.cardShimmer(size: _size),
                const SizedBox(height: 12.0),
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.7),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Container(
                          height: _size.height * 0.13,
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
            ),
          );
        }else if (state is MasterCardDetailSuccessState) {
          if(state.model.code == 200) {
            return Column(
              children: [
                Container(
                    height: _size.height * 0.41,


                    child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      onWebViewCreated: (WebViewController webViewController) {
                        _controller.complete(webViewController);
                        webViewController.loadUrl(
                          state.model.webview_url!,
                          headers: {"weavrtoken": state.model.weavrtoken!,"cardNumber":state.model.cardNumber!,"uikey":state.model.uikey!,"cvv":state.model.cvv!,"name-on-card":state.model.name_on_card!,"expiration":state.model.expiration!,"email":state.email,"token":state.token                       },
                        );
                      },


                    )
                ),
                SizedBox(height: _size.height * 0.02),
                Container(
                  height: _size.height * 0.19,
                  decoration: BoxDecoration(
                    color: _themeData.cardColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(42.0),
                      topRight: Radius.circular(42.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        ListTile(
                            leading: const Icon(
                              Icons.qr_code,
                              color: ConstantColors.primaryCyan,
                            ),
                            title: Text("Load Funds"),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.blueAccent,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MasterCardLoadFunds(),));

                            }),
                        ListTile(
                            leading: const Icon(
                              Icons.qr_code,
                              color: ConstantColors.primaryCyan,
                            ),
                            title: Text("View Transactions"),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.blueAccent,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MasterCardTransactionScreen(),));
                            }),

                      ],
                    ),
                  ),
                ),
              ],
            );
          } else if(state.model.code == 410){
            return Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Prepaid MasterCard",style: TextStyle(
                      fontSize: 24,fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: _size.height*0.3,),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Center(child: Text("${state.model.message}",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w400
                  ),))
                  )
                ],
              ),
            );
          }else {
            return Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                  Text("Prepaid MasterCard",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.w700
                  ),),
                    SizedBox(height: _size.height*0.3,),
                  Center(
                  child:Container(
                    margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

                    child: GestureDetector(
                        onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MasterCardIssueScreen(fees: state.model.fee),));
                        },
                        child: Stack(children: [
                          Container(
                            width: _size.width*0.5,
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
                                  "Apply Now",
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: _size.width*0.5,
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
                            width: MediaQuery.of(context).size.width*0.5,
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
                )
                ],
                ));
          }
        } else {
          return Container(
              height: _size.height / 1.5,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<MasterCardCubit>().getCardStatus();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent),
                  ),
                  child: Text(
                    'Refresh',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ));
        }
      },
    );
  }
}
