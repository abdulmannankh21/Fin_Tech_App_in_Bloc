

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_funds_screen.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/cubit/add_on_user_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/create_add_on_user_screen.dart';
import 'package:flutter_app/bottom_navigation/wallets/cubit/wallet_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/plan_screen.dart';
import 'package:flutter_app/bottom_navigation/wallets/wallet_transactions.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/utils/bottom_pop_up.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/constant/constant_data.dart';
import 'package:flutter_app/src/home/all_transaction.dart';
import 'package:flutter_app/src/home/bottom_contain.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/src/home/shimmer_effect/card_shimmer.dart';
import 'package:flutter_app/src/home/shimmer_effect/transaction_builder.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/user/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_app/user/dashboard/model/transaction_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';


class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {

  String type = '';
  @override
  void initState() {
    super.initState();
    getUserType();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<WalletCubit>().getWalletDetails();
    });
  }
  void getUserType() async{
    type = await MySharedPreferences().getStringValue(Constant.loginUserType);

  }

  Future<void> _getInfo() async {
    context.read<WalletCubit>().getWalletDetails();
  }

  @override
  Widget build(BuildContext context) {

    final _size = MediaQuery.of(context).size;
    final _themeData = Theme.of(context);
    return Scaffold(
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: _getInfo,
            child: SingleChildScrollView(
              primary: true,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: BlocConsumer<WalletCubit, WalletState>(
                listener: (context, state) {
                  if (state is WalletErrorState) {
                    if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken){
                      Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
                    }
                  }
                },
                builder: (context, state) {
                  if (state is WalletLoadingState) {
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
                    );
                  }
                  if (state is WalletSuccessState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [

                                        Container(

                                          alignment: Alignment.bottomRight,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(440),
                                                // topLeft: Radius.circular(5)
                                                bottomLeft: Radius.circular(100)
                                            ),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 30),
                                                color: ConstantColors.welcome_sign_in_second_circle,
                                                width: 60,
                                                height:80
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              // topLeft: Radius.circular(5)

                                              topLeft: Radius.circular(200),
                                            ),
                                            child: Container(
                                              color: ConstantColors.appBar,
                                              height: 60,
                                              width: 80,
                                            ),
                                          ),
                                        ),
                                      ])
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  width: _size.width * 0.9,
                                  height: _size.height * 0.26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                          children: [

                                            Row(
                                              children: [

                                                Container(
                                                  alignment: Alignment.bottomRight,
                                                  padding: const EdgeInsets.only(top:14),
                                                  child:Text(


                                                    state.model.balance.isNotEmpty ? state.model.balance[0].currency! : 'EUR',
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: _themeData.textTheme.headline6!
                                                        .copyWith(
                                                        fontWeight: FontWeight.w900,
                                                        color:
                                                        _themeData.colorScheme.onSurface,
                                                        fontSize: 14
                                                    ),
                                                  ),
                                                ),
                                                Text(

                                                  state.model.balance.isNotEmpty ? processAmount(double.parse(state.model.balance[0].balance!)) : '0.00',

                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  maxLines: 1,
                                                  style: _themeData.textTheme.headline6!
                                                      .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                    _themeData.colorScheme.onSurface,
                                                    fontSize: 36,

                                                  ),
                                                ),
                                              ],
                                            ),


                                          ],
                                        ),
                                        const SizedBox(height: 2.0),
                                        Row(
                                          children: [
                                            Text(
                                              'ewallet_id'.tr,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                              ),
                                            ),
                                            const SizedBox(width:18),

                                            Text(
                                              state.model.balance[0].ewallet_id!,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16
                                              ),

                                            ),
                                            GestureDetector(
                                              child: Icon(
                                                Icons.copy,
                                                color: _themeData
                                                    .colorScheme.onSurface
                                                    .withOpacity(0.4),
                                                size: 23.0,
                                              ),
                                              onTap: () {
                                                Clipboard.setData(
                                                  ClipboardData(
                                                    text:
                                                    state.model.balance[0].ewallet_id!,
                                                  ),
                                                );
                                                "wallet_id_copied_to_clipboard".tr
                                                    .showSnackBar(context);
                                              },
                                            ),


                                          ],
                                        ),
                                        const SizedBox(height: 2.0),
                                        state.model.subscription.isEmpty ? Container():
                                        Row(
                                          children: [
                                            Text(
                                              'plan_name'.tr,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                              ),
                                            ),
                                            const SizedBox(width:9),

                                            Text(
                                              state.model.subscription[0].plan_name!,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16
                                              ),

                                            ),


                                          ],
                                        ),
                                        const SizedBox(height: 2.0),
                                        state.model.subscription.isEmpty ? Container():
                                        Row(
                                          children: [
                                            Text(
                                              'start_date'.tr,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                              ),
                                            ),
                                            const SizedBox(width:15),

                                            Text(
                                              processDateTime(state.model.subscription[0].start_date!),
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16
                                              ),

                                            ),



                                          ],
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6.0),
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
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => WalletAddFund(),));
                                        },
                                        leading: const Icon(
                                          Icons.align_vertical_bottom_rounded,
                                          color: ConstantColors.primaryCyan,
                                        ),
                                        title:  Text("add_funds".tr),
                                        trailing: const Icon(Icons.arrow_forward_ios),
                                      ),
                                      ListTile(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => WalletTransaction(list: state.model.transactions),));
                                        },
                                        leading: const Icon(
                                          Icons.align_vertical_bottom_rounded,
                                          color: ConstantColors.primaryCyan,
                                        ),
                                        title:  Text("transactions".tr),
                                        trailing: const Icon(Icons.arrow_forward_ios),
                                      ),
                                      ListTile(
                                        onTap: () {

                                          // ignore: unnecessary_null_comparison
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlanScreen(planId: (state.model.subscription.isNotEmpty) ? state.model.subscription[0].plan_id! : " ")));
                                        },
                                        leading: const Icon(
                                          Icons.align_vertical_bottom_rounded,
                                          color: ConstantColors.primaryCyan,
                                        ),
                                        title: Text("view_subscription_plans".tr),
                                        trailing: const Icon(Icons.arrow_forward_ios),
                                      ),
                                      type == 'company' ? ListTile(
                                        onTap: () async {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateAddOnUser(),));
                                        },
                                        leading: const Icon(
                                          Icons.money_rounded,
                                          color: ConstantColors.primaryCyan,
                                        ),
                                        title: const Text("Create Add-On User"),
                                        trailing: const Icon(Icons.arrow_forward_ios),
                                      ) : Container(),
                                      type == 'company' ? ListTile(
                                        onTap: () {
                                          context.read<AddOnUserCubit>().getAddOnUserList();
                                          showModalBottomSheet<void>(
                                            context: context,
                                            isScrollControlled: true,
                                            isDismissible: true,
                                            backgroundColor: Colors.transparent,
                                            builder: (BuildContext context) {

                                              return BlocConsumer<AddOnUserCubit, AddOnUserState>(
                                                listener: (context, state) {
                                                  if(state is AddOnUserErrorState){
                                                    if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken ){
                                                      Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
                                                    }
                                                  }
                                                },

                                                builder: (context, state) {
                                                  if (state is AddOnUserLoadingState) {
                                                    return const LoadingScreen();
                                                  } else if (state is AddOnUserListSuccesstate){

                                                    return state.model.users.isEmpty ? Container(
                                                      padding: EdgeInsets.only(top:20),
                                                      decoration: BoxDecoration(
                                                        color: _themeData.canvasColor,
                                                        borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(42.0),
                                                          topRight: Radius.circular(42.0),
                                                        ),
                                                      ),
                                                      height: _size.height * 0.3,
                                                      child: const Center(
                                                        child: Text('no_users',style: TextStyle(
                                                            fontSize: 18
                                                        ),),
                                                      ),

                                                    ):Container(
                                                      padding: EdgeInsets.only(top:20),
                                                      decoration: BoxDecoration(
                                                        color: _themeData.canvasColor,
                                                        borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(42.0),
                                                          topRight: Radius.circular(42.0),
                                                        ),
                                                      ),
                                                      child: DraggableScrollableSheet(
                                                        initialChildSize: 0.6,
                                                        minChildSize: 0.2,
                                                        maxChildSize: 1.0,
                                                        expand: false,
                                                        builder: (_, controller) =>
                                                            ListView.builder(
                                                                controller: controller,
                                                                itemCount: state.model.users.length,
                                                                itemBuilder: (_, index) {
                                                                  return Column(
                                                                    children: [
                                                                      ListTile(


                                                                        title: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      children : [
                                                                        Text(
                                                                          "${state.model
                                                                              .users[index]
                                                                              .first_name!} ${state.model
                                                                              .users[index]
                                                                              .last_name!}",
                                                                          maxLines: 2,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                          children: [
                                                                        state
                                                                            .model
                                                                            .users[index]
                                                                            .accountid !=  null ? GestureDetector(
                                                                              child: const Icon(
                                                                                Icons.account_balance,
                                                                                color: ConstantColors.primaryCyan,
                                                                              ),


                                                                              onTap: () {
                                                                                // Navigator.of(
                                                                                //     context).push(
                                                                                //     MaterialPageRoute(
                                                                                //       builder: (
                                                                                //           context) =>
                                                                                //           ViewAddOnBankAccountScreen(
                                                                                //               accountid: state
                                                                                //                   .model
                                                                                //                   .users[index]
                                                                                //                   .accountid),));
                                                                              },
                                                                            ):Container(),
                                                                            state
                                                                                .model
                                                                                .users[index]
                                                                                .accountid !=  null?  Padding(
                                                                                padding: EdgeInsets.all(10),
                                                                              child: GestureDetector(
                                                                              child: const Icon(
                                                                                Icons.account_balance_wallet,
                                                                                color: ConstantColors.primaryCyan,
                                                                              ),


                                                                              onTap: () {
                                                                                // Navigator.of(
                                                                                //     context).push(
                                                                                //     MaterialPageRoute(
                                                                                //       builder: (
                                                                                //           context) =>
                                                                                //           ViewAddOnCardsScreen(
                                                                                //               cardid: state
                                                                                //                   .model
                                                                                //                   .users[index]
                                                                                //                   .cardid),));
                                                                              },
                                                                            )):Container(),
                                                                          ],
                                                                        )


                                                                      ],
                                                                  ),
                                                                        leading: CircleAvatar(
                                                                            radius: 20.0,
                                                                            backgroundColor: _themeData
                                                                                .cardColor,
                                                                            child: Text(
                                                                              state.model
                                                                                  .users[index]
                                                                                  .first_name![0],
                                                                              style: const TextStyle(
                                                                                color: ConstantColors
                                                                                    .primaryCyan,
                                                                              ),
                                                                            )
                                                                        ),


                                                                      ),

                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(right: 12.0,
                                                                            left: 20.0),
                                                                        child: Divider(
                                                                          thickness: 1.0,
                                                                          color: Colors.grey
                                                                              .withOpacity(0.2),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  );
                                                                }
                                                            ),
                                                      ),

                                                    );
                                                  }else {
                                                    return Container(
                                                      child: Text('something_wrong_happened'.tr),
                                                    );
                                                  }
                                                },
                                              );
                                            },
                                          );},
                                        leading: const Icon(
                                          Icons.align_vertical_bottom_rounded,
                                          color: ConstantColors.primaryCyan,
                                        ),
                                        title: const Text("View Add-On Users"),
                                        trailing: const Icon(Icons.arrow_forward_ios),
                                      ):Container(),
                                    ]))),//!

                        const SizedBox(height: 10.0),


                      ],
                    );

                  } else {
                    return RefreshIndicator(onRefresh: _getInfo,child: Center(
                      child: Text(
                        "something_went_wrong".tr,
                        style: _themeData.textTheme.caption,
                      ),
                    ));
                  }
                },
              ),
            ),
          ),
        ));
  }

  String getTitle(TransactionModel model){
    if(model.additionalFields!.sender != null){
      return model.additionalFields!.sender!;
    }else if(model.additionalFields!.destinationInstrumentFriendlyName != null){
      return model.additionalFields!.destinationInstrumentFriendlyName!;
    }else{
      return model.additionalFields!.beneficiaryName!;
    }

  }

  String processDateTime(String? dateTime){
    // timestamp in seconds
    DateTime date = DateTime.parse(dateTime!);
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(date);
    return formatted;

  }

  String processAmount(double amount){
    String newAmount = amount.toStringAsFixed(2);
    return newAmount;
  }
}
