import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/bottom_navigation/deposit/deposit_screen.dart';
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
import 'package:flutter_app/src/home/transaction/home_transaction_screen.dart';
import 'package:flutter_app/src/widget/transaction_new.dart';
import 'package:flutter_app/user/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_app/user/dashboard/model/transaction_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String image = '';

  @override
  void initState() {
    super.initState();
    getProfileUrl();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DashboardCubit>().dashboard();
    });
  }

  void getProfileUrl() async {
    image = await MySharedPreferences().getStringValue(Constant.profileImage);
  }

  Future<void> _getInfo() async {
    context.read<DashboardCubit>().dashboard();
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
          child: BlocConsumer<DashboardCubit, DashboardState>(
            listener: (context, state) {
              if (state is DashboardError) {
                if (state.errorMessage == Constant.tokenExpired ||
                    state.errorMessage == Constant.invalidToken) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    ScreenNames.login,
                    (route) => false,
                  );
                }
              }
            },
            builder: (context, state) {
              if (state is DashboardLoading) {
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
              if (state is DashboardSuccess) {
                // if (state.model.account!.balances!.actualBalance!.isNaN) {
                //   return const Center(child: Text("Empty"));
                // } else {

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
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(440),
                                        // topLeft: Radius.circular(5)
                                        bottomLeft: Radius.circular(100)),
                                    child: Container(
                                        margin: EdgeInsets.only(bottom: 30),
                                        color: ConstantColors
                                            .welcome_sign_in_second_circle,
                                        width: 60,
                                        height: 80),
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
                              ])),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${state.model.wallet_balance!.balance!} ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              maxLines: 1,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: _themeData
                                                    .colorScheme.onSurface,
                                                fontSize:30,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.bottomRight,
                                              padding: const EdgeInsets.only(
                                                  top: 14),
                                              child: Text(
                                                "${state.model.wallet_balance!.currency}",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: _themeData
                                                    .textTheme.headline6!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: _themeData
                                                            .colorScheme
                                                            .onSurface,
                                                        fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DepositScreen()));
                                          },
                                          child: const CircleAvatar(
                                            backgroundColor: ConstantColors
                                                .welcome_sign_in_second_circle,
                                            radius: 18.0,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 2.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    (state.model.currency != null)
                        ? Container(
                            height: _size.height * 0.15,
                            width: _size.width,
                            child: ListView.builder(
                              itemCount: state.model.currency!.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (context, index) {
                                final _model = state.model.currency![index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 6.0,
                                  ),
                                  child: Card(
                                    elevation: 4.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: _size.width * 0.32,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              FontAwesomeIcons.wallet,
                                              color: ConstantColors.primaryCyan,
                                              size: 20.0,
                                            ),
                                            const Spacer(),
                                            AutoSizeText(
                                              """${_model?.code} ${_model?.balance ?? ''}""",
                                              maxFontSize: 16.0,
                                              minFontSize: 10.0,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: _themeData
                                                  .textTheme.headline6!
                                                  .copyWith(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              "Wallet",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                                  _themeData.textTheme.caption,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : Container(),
                    const SizedBox(height: 6.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "transactions".tr,
                              style: _themeData.textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          state.model.transactions != null
                              ? TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeTransactionScreen()));
                                  },
                                  child: Text(
                                    "view_all".tr,
                                    style: _themeData.textTheme.caption,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    state.model.transactions == null
                        ? Container(
                            child: Center(
                              child: Text("no_transactions".tr),
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.all(0.0),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.model.transactions?.length,
                            itemBuilder: (BuildContext context, int index) {
                              return state.model.transactions?.length == null
                                  ? Container(
                                      height: _size.height * 1,
                                      width: _size.width,
                                    )
                                  : TransactionBuilderNew(
                                      onTap: () {
                                        final _model =
                                            state.model.transactions![index];

                                        showModalBottomSheet<void>(
                                          context: context,
                                          backgroundColor: Colors.transparent,
                                          builder: (BuildContext context) {
                                            return BottomPopUp(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    Column(
                                                      children: [
                                                        ListTile(
                                                          leading: const Icon(
                                                            Icons
                                                                .stacked_bar_chart,
                                                            color: ConstantColors
                                                                .primaryCyan,
                                                          ),
                                                          title: Text(
                                                            'amount'.tr,
                                                            maxLines: 2,
                                                          ),
                                                          trailing: Container(
                                                            width: _size.width *
                                                                0.3,
                                                            child: Text(
                                                              """${_model!.currency?.toUpperCase()} ${_model.amount}""",
                                                              style:
                                                                  const TextStyle(
                                                                color: ConstantColors
                                                                    .primaryCyan,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 12.0,
                                                                  left: 20.0),
                                                          child: Divider(
                                                            thickness: 1.0,
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.2),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    BottomContain(
                                                      title: "date".tr,
                                                      icon: Icons.date_range,
                                                      subTitle:
                                                          _model.created_at,
                                                    ),
                                                    BottomContain(
                                                      icon: Icons.description,
                                                      title: "type".tr,
                                                      subTitle:
                                                          _model.description,
                                                      maxLines: 2,
                                                    ),
                                                    BottomContain(
                                                      icon: Icons
                                                          .stacked_bar_chart,
                                                      title: "entry_state".tr,
                                                      subTitle:
                                                          _model.payment_status,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                leading: (double.parse(state.model.transactions![index].amount!) > 0) ? Icon(Icons.arrow_drop_down_outlined,color: Colors.green,) : Icon(Icons.arrow_drop_up_outlined,color: Colors.red),
                                      title: state.model.transactions![index]
                                          .description!,
                                      description: state.model
                                          .transactions![index].created_at!,
                                      amount:
                                          """${state.model.transactions![index].currency} ${state.model.transactions![index].amount}""",
                                    );
                            },
                          ),
                  ],
                );
              } else {
                return Center(
                  child: Text(
                    "something_went_wrong".tr,
                    style: _themeData.textTheme.caption,
                  ),
                );
              }
            },
          ),
        ),
      ),
    ));
  }

  String getTitle(TransactionModel model) {
    if (model.additionalFields!.sender != null) {
      return model.additionalFields!.sender!;
    } else if (model.additionalFields!.destinationInstrumentFriendlyName !=
        null) {
      return model.additionalFields!.destinationInstrumentFriendlyName!;
    } else {
      return model.additionalFields!.beneficiaryName!;
    }
  }

  String processTimeStamp(double? timestamp) {
    // timestamp in seconds
    final DateTime datetime =
        DateTime.fromMillisecondsSinceEpoch(timestamp!.toInt());
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(datetime);
    return formatted;
  }

  String processAmount(double amount) {
    double amt = amount / 100;
    String newAmount = amt.toStringAsFixed(2);
    return newAmount;
  }
}
