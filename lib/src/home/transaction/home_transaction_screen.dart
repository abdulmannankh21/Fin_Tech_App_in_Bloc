import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/cubit/card_transaction_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/model/card_transaction_model.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/utils/bottom_pop_up.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/home/bottom_contain.dart';
import 'package:flutter_app/src/home/shimmer_effect/transaction_builder.dart';
import 'package:flutter_app/src/home/transaction/cubit/home_transaction_cubit.dart';
import 'package:flutter_app/src/widget/xenio_search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';


class HomeTransactionScreen extends StatefulWidget {

  @override
  State<HomeTransactionScreen> createState() => _HomeTransactionScreenState();
}

class _HomeTransactionScreenState extends State<HomeTransactionScreen> {
  final TextEditingController _controller = TextEditingController();

  void initState(){
    super.initState();
    context.read<HomeTransactionCubit>().getTransaction();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: _theme.backgroundColor,
      appBar: PreferredSize(
        preferredSize: new Size(
            MediaQuery.of(context).size.width,
            100.0
        ),
        child: Stack(
          children: [
          Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0XFF87F0FF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60))),
        ),Container(
              height:95,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0XFF009FE3),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                          Navigator.of(context).pop();
                    }, icon: Icon(
                        Icons.arrow_back,color: Colors.white)),
                    SizedBox(width: _size.width*0.25),

                    Text("transactions".tr,
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                  ]
              )
            ],
          ),
        ),
        ]
        )
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
            color: Color(0XFF009FE3)
        ),
        child: BlocConsumer<HomeTransactionCubit, HomeTransactionState>(
          listener: (context, state) {
            if(state is HomeTransactionErrorState){
              if(state.errorMessage == Constant.tokenExpired){
                Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
              }
            }
          },
          builder: (context, state) {
            if (state is HomeTransactionLoadingState) {
              return Container(
                  color: _theme.disabledColor,
                  child:Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Shimmer.fromColors(
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
                  ));
            }
            if (state is HomeTransactionSuccesstate) {
              if (state.model.transactions != null) {
                return Column(
                  children: [
                    SizedBox(height: 40),
                    Container(
                      margin: EdgeInsets.only(left: 25,right: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Color(0XFF1433FF),
                      ),
                      child: TextFormField(
                        textInputAction: TextInputAction.search,
                        onEditingComplete: (){
                          context
                              .read<HomeTransactionCubit>()
                              .searchTransaction(
                            state.model.transactions!,
                            _controller.text,
                          );
                        },
                        controller: _controller,

                        decoration: InputDecoration(
                          fillColor: Color(0XFF1433FF),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white.withOpacity(0.4),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                          focusColor: new Color(0XFF1433FF),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide:  BorderSide(
                              color: new Color(0XFF1433FF),
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'search'.tr,
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                          ),
                          border: OutlineInputBorder(
                            gapPadding: 0.0,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        height: _size.height*0.6,
                        child: SingleChildScrollView(


                            physics: const ScrollPhysics(),
                            child:
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: state.model.transactions?.length,
                              itemBuilder: (BuildContext context, int index) {
                                final _model = state.model.transactions?[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: TransactionBuilder(
                                    onTap: () {
                                      final _model = state.model.transactions?[index];
                                      showModalBottomSheet<void>(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        isScrollControlled: true,
                                        isDismissible: true,
                                        builder: (BuildContext context) {
                                          return BottomPopUp(
                                            height: MediaQuery.of(context).size.height*0.65,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,

                                                children: <Widget>[
                                                  Column(
                                                    children: [
                                                      ListTile(
                                                        leading: const Icon(
                                                          Icons.account_balance_wallet,
                                                          color: ConstantColors.primaryCyan,
                                                        ),
                                                        title: Text(
                                                          'amount'.tr,
                                                          maxLines: 2,
                                                        ),
                                                        trailing: Container(
                                                          width: _size.width * 0.3,
                                                          child: Text(
                                                            """${_model?.currency} ${_model!.amount} """,
                                                            style: const TextStyle(
                                                              color: ConstantColors.primaryCyan,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 12.0, left: 20.0),
                                                        child: Divider(
                                                          thickness: 1.0,
                                                          color: Colors.grey.withOpacity(0.2),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  BottomContain(
                                                    title: "date".tr,
                                                    icon: Icons.date_range,
                                                    subTitle: _model.created_at,
                                                  ),
                                                  BottomContain(
                                                    icon: Icons.note,
                                                    title: "type".tr,
                                                    subTitle: _model.description!,
                                                    maxLines: 2,
                                                  ),
                                                  BottomContain(
                                                    icon: Icons.note,
                                                    title: "enter_state".tr,
                                                    subTitle: _model.payment_status!,
                                                    maxLines: 2,
                                                  ),


                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    leading: (double.parse(_model!.amount!) > 0) ? Icon(Icons.arrow_drop_down_outlined,color: Colors.green,) : Icon(Icons.arrow_drop_up_outlined,color: Colors.red),
                                    title: _model.description!,
                                    description: _model.created_at!,
                                    amount:
                                    """${_model.currency!} ${_model.amount!} """,
                                  ),
                                );
                              },
                            ))),
                  ],
                );
              } else {
                return  Center(
                  child: Text("no_transactions_found".tr),
                );
              }
            }else if (state is HomeSearchResultLoaded) {
              if (state.allTransaction != null) {
                return Column(
                  children: [
                    SizedBox(height: 40),
            Container(
            margin: EdgeInsets.only(left: 25,right: 25),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Color(0XFF1433FF),
            ),
            child: TextFormField(
            textInputAction: TextInputAction.search,
            onEditingComplete: (){
              context
                  .read<HomeTransactionCubit>()
                  .searchTransaction(
                state.allTransaction,
                _controller.text,
              );
            },
            controller: _controller,

            decoration: InputDecoration(
            fillColor: Color(0XFF1433FF),
            prefixIcon: Icon(
            Icons.search,
            color: Colors.white.withOpacity(0.4),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
            focusColor: new Color(0XFF1433FF),
            focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide:  BorderSide(
            color: new Color(0XFF1433FF),
            width: 1.5,
            ),
            ),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
            ),
            hintText: 'search'.tr,
            hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.4),
            ),
            border: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(12.0),
            ),
            ),
            ),
            ),
            SizedBox(height: 20),
            Container(
            height: _size.height*0.65,
            child: SingleChildScrollView(


            physics: const ScrollPhysics(),
            child:
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: state.allTransaction?.length,
                        itemBuilder: (BuildContext context, int index) {
                          final _model = state.allTransaction?[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: TransactionBuilder(

                              onTap: () {
                                final _model = state.allTransaction?[index];
                                showModalBottomSheet<void>(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (BuildContext context) {
                                    return BottomPopUp(
                                      height: _size.height,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            BottomContain(
                                              title: "amount".tr,
                                              icon: Icons.account_balance_wallet,
                                              subTitle: """${_model?.currency} ${_model?.amount!} """,
                                            ),
                                            BottomContain(
                                              title: "date".tr,
                                              icon: Icons.date_range,
                                              subTitle: _model?.created_at!,
                                            ),
                                            BottomContain(
                                              icon: Icons.note,
                                              title: "type".tr,
                                              subTitle: _model?.description!,
                                              maxLines: 2,
                                            ),
                                            BottomContain(
                                              icon: Icons.note,
                                              title: "enter_state".tr,
                                              subTitle: _model?.payment_status!,
                                              maxLines: 2,
                                            ),

                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              leadingText: _model!.payment_status![0],
                              title: _model.description!,
                              description: _model.created_at!,
                              amount:
                              """${_model.currency} ${_model.amount!} """,
                            ),
                          );
                        },
                      ))),
                    ],
            );
              } else {
                return  Center(
                  child: Text("no_transactions_found".tr),
                );
              }
            } else {
              return Center(
                child: Text(
                  "something_went_wrong_during_fetch_transaction".tr,
                  style: _theme.textTheme.caption,
                ),
              );
            }
          },
        ),
      ),
    );
  }


}
