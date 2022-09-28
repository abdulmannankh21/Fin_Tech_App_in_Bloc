import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/cubit/card_transaction_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/model/card_transaction_model.dart';
import 'package:flutter_app/bottom_navigation/mastercard/transactions/cubit/transaction_cubit.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/utils/bottom_pop_up.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/home/bottom_contain.dart';
import 'package:flutter_app/src/home/shimmer_effect/transaction_builder.dart';
import 'package:flutter_app/src/widget/xenio_search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';


class MasterCardTransactionScreen extends StatefulWidget {

  @override
  State<MasterCardTransactionScreen> createState() => _MasterCardTransactionScreenState();
}

class _MasterCardTransactionScreenState extends State<MasterCardTransactionScreen> {
  final TextEditingController _controller = TextEditingController();

  void initState(){
    super.initState();
    context.read<MasterCardTransactionCubit>().getCardTransactions();
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
        child: BlocConsumer<MasterCardTransactionCubit, MasterCardTransactionState>(
          listener: (context, state) {
            if(state is CardTransactionErrorState){

            }
          },
          builder: (context, state) {
            if (state is MasterCardTransactionLoadingState) {
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
            if (state is MasterCardTransactionSuccessState) {
              if (state.model.data.response.count > 0) {
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
                              .read<MasterCardTransactionCubit>()
                              .searchTransaction(
                            state.model.data.response.entry,
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
                              itemCount: state.model.data.response.count,
                              itemBuilder: (BuildContext context, int index) {
                                final _model = state.model.data.response.entry[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: TransactionBuilder(
                                    onTap: () {
                                      final _model = state.model.data.response.entry[index];
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
                                                            """${_model?.transactionAmount!.currency} ${_model!.transactionAmount!.amount} """,
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
                                                    subTitle: processTimeStamp(double.parse(_model.processedTimestamp!)),
                                                  ),
                                                  BottomContain(
                                                    icon: Icons.note,
                                                    title: "type".tr,
                                                    subTitle: _model.txId!.type,
                                                    maxLines: 2,
                                                  ),
                                                  BottomContain(
                                                    icon: Icons.note,
                                                    title: "enter_state".tr,
                                                    subTitle: _model.statementEntryState,
                                                    maxLines: 2,
                                                  ),
                                                  BottomContain(
                                                    title: "transaction_id".tr,
                                                    icon: Icons.date_range,
                                                    subTitle: _model.txId!.id,
                                                  ),

                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    leadingText: _model!.txId!.type[0],
                                    leading: (double.parse(_model
                                        .transactionAmount!.amount) >
                                        0)
                                        ? Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: Colors.green,
                                    )
                                        : Icon(Icons.arrow_drop_up_outlined,
                                        color: Colors.red),
                                    title: _model.additionalFields!.merchantName != null ? _model.additionalFields!.merchantName! : "Transaction",
                                    description: processTimeStamp(double.parse(_model.processedTimestamp!)),
                                    amount:
                                    """${_model.transactionAmount!.currency} ${processAmount(double.parse(_model.transactionAmount!.amount))} """,
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
            }else if (state is MasterCardSearchResultLoaded) {
              if (state.model != null &&
                  state.model != null &&
                  state.model!.isNotEmpty) {
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
                              .read<MasterCardTransactionCubit>()
                              .searchTransaction(
                            state.model,
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
                              itemCount: state.model!.length,
                              itemBuilder: (BuildContext context, int index) {
                                final _model = state.model![index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: TransactionBuilder(

                                    onTap: () {
                                      final _model = state.model![index];
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
                                                    subTitle: """${_model.transactionAmount!.currency} ${processAmount(double.parse(_model.transactionAmount!.amount))} """,
                                                  ),
                                                  BottomContain(
                                                    title: "date".tr,
                                                    icon: Icons.date_range,
                                                    subTitle: processTimeStamp(double.parse(_model.processedTimestamp!)),
                                                  ),
                                                  BottomContain(
                                                    icon: Icons.note,
                                                    title: "type".tr,
                                                    subTitle: _model.txId!.type,
                                                    maxLines: 2,
                                                  ),
                                                  BottomContain(
                                                    icon: Icons.note,
                                                    title: "enter_state".tr,
                                                    subTitle: _model.statementEntryState,
                                                    maxLines: 2,
                                                  ),
                                                  BottomContain(
                                                    title: "transaction_id".tr,
                                                    icon: Icons.date_range,
                                                    subTitle: _model.txId!.id,
                                                  ),
                                                  BottomContain(
                                                    title: "name".tr,
                                                    icon: Icons.date_range,
                                                    subTitle: _model.additionalFields!.merchantName!,
                                                  ),

                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    leadingText: _model!.txId!.type[0],
                                    title: _model.additionalFields!.merchantName!,
                                    description: processTimeStamp(double.parse(_model.processedTimestamp!)),
                                    amount:
                                    """${_model.transactionAmount!.currency} ${processAmount(double.parse(_model.transactionAmount!.amount))} """,
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
  String processTimeStamp(double? timestamp){
    // timestamp in seconds
    final DateTime datetime = DateTime.fromMillisecondsSinceEpoch(timestamp!.toInt());
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(datetime);
    return formatted;

  }
  String processAmount(double amount){
    double amt = amount/100;
    String newAmount = amt.toStringAsFixed(2);
    return newAmount;
  }
  String getTitle(TransactionModel model) {
    if (model.additionalFields!.sender != null) {
      return model.additionalFields!.sender!;
    } else if (model.additionalFields!.destinationInstrumentFriendlyName !=
        null) {
      return model.additionalFields!.destinationInstrumentFriendlyName!;
    } else if(model.additionalFields!.beneficiaryName != null){
      return model.additionalFields!.beneficiaryName!;
    }else if(model.additionalFields!.sourceInstrumentFriendlyName != null){
      return model.additionalFields!.sourceInstrumentFriendlyName!;
    }else if (model.additionalFields!.merchantName !=
        null) {
      return model.additionalFields!.merchantName!;
    } else if(model.additionalFields!.senderReference != null){
      return model.additionalFields!.senderReference!;
    }else if(model.additionalFields!.authorisationState != null){
      return model.additionalFields!.authorisationState!;
    }else if (model.additionalFields!.systemTransactionType !=
        null) {
      return model.additionalFields!.systemTransactionType!;
    } else if(model.additionalFields!.sourceIdentityName != null){
      return model.additionalFields!.sourceIdentityName!;
    }else if(model.additionalFields!.sourceIdentityType != null){
      return model.additionalFields!.sourceIdentityType!;
    }else if (model.additionalFields!.sourceInstrumentType !=
        null) {
      return model.additionalFields!.sourceInstrumentType!;
    } else if(model.additionalFields!.merchantTransactionType != null){
      return model.additionalFields!.merchantTransactionType!;
    }else if(model.additionalFields!.authorisationCode != null){
      return model.additionalFields!.authorisationCode!;
    } else if(model.additionalFields!.authorisationRelatedId != null){
      return model.additionalFields!.authorisationRelatedId!;
    }else if(model.additionalFields!.beneficiaryAccount != null){
      return model.additionalFields!.beneficiaryAccount!;
    }else if (model.additionalFields!.beneficiaryBankCode !=
        null) {
      return model.additionalFields!.beneficiaryBankCode!;
    } else if(model.additionalFields!.chargeFeeType != null){
      return model.additionalFields!.chargeFeeType!;
    }else if(model.additionalFields!.destinationInstrumentId != null){
      return model.additionalFields!.destinationInstrumentId!;
    }else if (model.additionalFields!.exchangeRate !=
        null) {
      return model.additionalFields!.exchangeRate!;
    } else if(model.additionalFields!.forexFeeAmount != null){
      return model.additionalFields!.forexFeeAmount!;
    }else if(model.additionalFields!.forexFeeCurrency != null){
      return model.additionalFields!.forexFeeCurrency!;
    }else if (model.additionalFields!.forexPaddingAmount !=
        null) {
      return model.additionalFields!.forexPaddingAmount!;
    } else if(model.additionalFields!.forexPaddingCurrency != null){
      return model.additionalFields!.forexPaddingCurrency!;
    }else if(model.additionalFields!.destinationInstrumentType != null){
      return model.additionalFields!.destinationInstrumentType!;
    }else if(model.additionalFields!.mandateId != null){
      return model.additionalFields!.mandateId!;
    } else if(model.additionalFields!.merchantCategoryCode != null){
      return model.additionalFields!.merchantCategoryCode!;
    }else if(model.additionalFields!.merchantId != null){
      return model.additionalFields!.merchantId!;
    }else if (model.additionalFields!.merchantReference !=
        null) {
      return model.additionalFields!.merchantReference!;
    } else if(model.additionalFields!.merchantTerminalCountry != null){
      return model.additionalFields!.merchantTerminalCountry!;
    }else if(model.additionalFields!.note != null){
      return model.additionalFields!.note!;
    }else if (model.additionalFields!.relatedCardId !=
        null) {
      return model.additionalFields!.relatedCardId!;
    } else if(model.additionalFields!.relatedTransactionId != null){
      return model.additionalFields!.relatedTransactionId!;
    }else if(model.additionalFields!.relatedTransactionIdType != null){
      return model.additionalFields!.relatedTransactionIdType!;
    }else if (model.additionalFields!.senderIban !=
        null) {
      return model.additionalFields!.senderIban!;
    } else if(model.additionalFields!.settlementRelatedId != null){
      return model.additionalFields!.settlementRelatedId!;
    }else if(model.additionalFields!.sourceIdentityId != null){
      return model.additionalFields!.sourceIdentityId!;
    }else if(model.additionalFields!.sourceInstrumentId != null){
      return model.additionalFields!.sourceInstrumentId!;
    }else{
      return "Transaction";
    }
  }

}
