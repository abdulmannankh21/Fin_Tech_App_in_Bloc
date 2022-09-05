import 'package:flutter/material.dart';
import 'package:flutter_app/core/utils/bottom_pop_up.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/home/bottom_contain.dart';
import 'package:flutter_app/src/home/shimmer_effect/transaction_builder.dart';
import 'package:flutter_app/src/widget/xenio_search.dart';
import 'package:flutter_app/user/dashboard/model/transaction_model.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AllTransaction extends StatefulWidget {
  List<TransactionModel>? list;

  AllTransaction({Key? key, required this.list}) : super(key: key);

  @override
  State<AllTransaction> createState() => _AllTransactionState();
}

class _AllTransactionState extends State<AllTransaction> {
  final TextEditingController _controller = TextEditingController();
  List<TransactionModel>? newlist;

  @override
  void initState() {
    super.initState();
    newlist = List.from(widget.list!);
  }

  void filterSearchResults(String query) {
    List<TransactionModel> dummySearchList = [];
    dummySearchList.addAll(newlist!);
    print(dummySearchList.length);
    if (query.isNotEmpty) {
      List<TransactionModel>? dummyListData = [];
      dummySearchList.forEach((item) {
        if (getTitle(item).toLowerCase().contains(query.toLowerCase()) ||
            item.transactionAmount!.amount.toString().contains(query)) {
          dummyListData.add(item);
        }
      });
      print(dummyListData.length);
      setState(() {
        newlist!.clear();
        newlist!.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        newlist!.clear();
        newlist!.addAll(widget.list!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);

    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 100.0),
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
                    height: 95,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0XFF009FE3),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.arrow_back, color: Colors.white)),
                          SizedBox(width: _size.width*0.25),
                           Text("transactions".tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ])
                      ],
                    ),
                  ),
                ]
            )
        ),
        backgroundColor: _theme.backgroundColor,
        body: Container(
          margin: EdgeInsets.only(top: 50),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Color(0XFF009FE3)),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0XFF1433FF),
                ),
                child: TextFormField(
                  onChanged: (value){
                    filterSearchResults(value);
                  },
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    fillColor: const Color(0XFF1433FF),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.4),
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12.0),
                    focusColor: const Color(0XFF1433FF),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Color(0XFF1433FF),
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
                      child: newlist!.isEmpty
                          ? Container(
                          height: _size.height * .6,
                          child: Center(
                            child: Text("no_transactions".tr),
                          ))
                          : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: newlist!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TransactionBuilder(
                            onTap: () {
                              final _model = widget.list![index];
                              showModalBottomSheet<void>(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return BottomPopUp(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Column(
                                            children: [
                                              ListTile(
                                                leading: const Icon(
                                                  Icons.stacked_bar_chart,
                                                  color: ConstantColors
                                                      .primaryCyan,
                                                ),
                                                title: Text(
                                                  'amount'.tr,
                                                  maxLines: 2,
                                                ),
                                                trailing: Container(
                                                  width:
                                                  _size.width * 0.3,
                                                  child: Text(
                                                    """${_model.transactionAmount!.currency.toUpperCase()} ${processAmount(_model.transactionAmount!.amount)}""",
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
                                                const EdgeInsets.only(
                                                    right: 12.0,
                                                    left: 20.0),
                                                child: Divider(
                                                  thickness: 1.0,
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                ),
                                              ),
                                            ],
                                          ),
                                          BottomContain(
                                            icon: Icons.description,
                                            title: "type".tr,
                                            subTitle: _model
                                                .transactionId!.type,
                                            maxLines: 2,
                                          ),
                                          BottomContain(
                                            title: "date".tr,
                                            icon: Icons.date_range,
                                            subTitle: processTimeStamp(
                                                _model
                                                    .processedTimestamp),
                                          ),
                                          BottomContain(
                                            title: 'transaction_id'.tr,
                                            icon: Icons.person,
                                            subTitle:
                                            _model.transactionId!.id,
                                          ),
                                          BottomContain(
                                            icon: Icons.stacked_bar_chart,
                                            title: "enter_state".tr,
                                            subTitle: _model.entryState,
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            leadingText:
                            newlist![index].transactionId!.type[0],
                            title: getTitle(newlist![index]),
                            description: processTimeStamp(
                                newlist![index].processedTimestamp),
                            amount:
                            """${newlist![index].transactionAmount!.currency} ${processAmount(newlist![index].transactionAmount!.amount)} """,
                          );
                        },
                      ))),
            ],
          ),
        ),
    );
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
      return "Transactions";
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
