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

class CardDetailsComponents extends StatefulWidget {
  const CardDetailsComponents({Key? key}) : super(key: key);

  @override
  State<CardDetailsComponents> createState() => _CardDetailsComponentsState();
}

class _CardDetailsComponentsState extends State<CardDetailsComponents> {
  bool val = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CarddetailsCubit>().carddetails();
    });
    super.initState();
  }

  Future<void> _onRefresh() async {
    context.read<CarddetailsCubit>().carddetails();
  }

  List<String> _currency = [
    "NGN",
    "USD",
  ];

  String _selectCurrency = '';
  final _key = UniqueKey();
  final TextEditingController _amountController = TextEditingController();
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _themeData = Theme.of(context);
    return BlocConsumer<CarddetailsCubit, CarddetailsState>(
      listener: (context, state) {
        if (state is CarddetailsErrorState) {
        } else if (state is IssueCardSuccesstate) {
          if (state.model.code == 200) {
            "Card Issue Successfully".showSnackBar(context);
            Navigator.of(context).pushNamedAndRemoveUntil(
              ScreenNames.bottomNavigationHome,
              (Route<dynamic> route) => false,
            );
          } else {
            "Error Occurred ".showSnackBar(context);
            Navigator.of(context).pushNamedAndRemoveUntil(
              ScreenNames.bottomNavigationHome,
              (Route<dynamic> route) => false,
            );
          }
        } else if (state is IssueCardErrorstate) {
          "Error Occurred ".showSnackBar(context);
        }
      },
      builder: (context, state) {
        if (state is CarddetailsLoadingState) {
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
                    itemCount: 6,
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
        }
        if (state is CarddetailsSuccesstate) {
          if (state.model.code == 200) {
            String data =
                '{"card_hash":"${state.model.data!.qrimage!.data!.card_hash!}","cvv":"${state.model.data!.cvv}","expiration":"${state.model.data!.expiration}","name_on_card":"${state.model.data!.name_on_cad}"}';
            print(data);
            String url = state.model.data!.qrimage!.url!.toString() + data;
            print(url);

            return Column(
              children: [
                Container(
                    height: _size.height * 0.4,
                    width: _size.width * 0.98,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(state.model.data!.card_design!),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          SizedBox(
                            height: _size.height * 0.24,
                            width: _size.width * 0.04,
                          ),
                          Image(
                            alignment: Alignment.centerLeft,
                            image: NetworkImage(url),
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: _size.width * 0.04,
                          ),
                          Text(
                            state.model.data!.card_pan!,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Text(
                                "Cardholder          ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(
                                width: _size.width * 0.28,
                              ),
                              Text(
                                "CVV",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                              ),
                              Text(
                                state.model.data!.cvv!,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Text(
                                state.model.data!.name_on_cad!.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: _size.width * 0.28,
                              ),
                              Text(
                                "VALID",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                              ),
                              Text(
                                state.model.data!.expiration!,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          )),
                    ])),
                SizedBox(height: _size.height * 0.02),
                Container(
                  height: _size.height * 0.48,
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
                            title: Text("View QR"),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.blueAccent,
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: _size.width,
                                      height: _size.height/3,
                                      margin: EdgeInsets.all(25),
                                      child:WebView(
                                        backgroundColor: Colors.white,
                                      initialUrl: url,
                                    ));
                                  });
                            }),
                        if (state.model.data!.is_active! == "ACT")
                          BlocConsumer<BlockcardCubit, BlockcardState>(
                            listener: (context, state) {
                              if (state is BlockcardSuccesstate) {
                                "Card Blocked Successfully"
                                    .showSnackBar(context);
                              } else if (state is BlockcardErrorState) {
                                "Error Occurred".showSnackBar(context);
                              }
                            },
                            builder: (context, state) {
                              if (state is BlockcardLoadingState) {
                                return const LoadingScreen();
                              } else {
                                return ListTile(
                                  leading: const Icon(
                                    Icons.block,
                                    color: ConstantColors.primaryCyan,
                                  ),
                                  title: Text("block".tr),
                                  trailing: CupertinoSwitch(
                                    value: false,
                                    onChanged: (newValue) async {
                                      await context
                                          .read<BlockcardCubit>()
                                          .blockcard();
                                      await _onRefresh();
                                    },
                                  ),
                                );
                              }
                            },
                          ),
                        if (state.model.data!.is_active! != "ACT")
                          BlocConsumer<UnblockcardCubit, UnblockcardState>(
                            listener: (context, state) {
                              if (state is UnblockcardSuccesstate) {
                                "Card UnBlocked Successfully"
                                    .showSnackBar(context);
                              } else if (state is UnblockcardErrorState) {
                                "Error Occurred".showSnackBar(context);
                              }
                            },
                            builder: (context, state) {
                              if (state is UnblockcardLoadingState) {
                                return const LoadingScreen();
                              } else {
                                return ListTile(
                                  leading: const Icon(
                                    Icons.block,
                                    color: ConstantColors.primaryCyan,
                                  ),
                                  title: Text("block".tr),
                                  trailing: CupertinoSwitch(
                                    value: true,
                                    onChanged: (newValue) async {
                                      await context
                                          .read<UnblockcardCubit>()
                                          .unblockcard();
                                      await _onRefresh();
                                    },
                                  ),
                                );
                              }
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("Closed Loop Cards",style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: _size.height*0.3,),
                    Center(
                      child:Container(
                        margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

                        child: GestureDetector(
                            onTap: () {
                              context.read<CarddetailsCubit>().issueCard();
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
                    context.read<CarddetailsCubit>().carddetails();
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
