import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/wallets/model/wallet_details_model.dart';
import 'package:flutter_app/core/utils/bottom_pop_up.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/home/bottom_contain.dart';
import 'package:flutter_app/src/home/shimmer_effect/transaction_builder.dart';
import 'package:flutter_app/src/widget/xenio_search.dart';
import 'package:flutter_app/user/dashboard/model/transaction_model.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';



class WalletTransaction extends StatefulWidget {

  List<Transaction>? list;
  WalletTransaction({Key? key,required this.list}) : super(key: key);

  @override
  State<WalletTransaction> createState() => _WalletTransactionState();
}

class _WalletTransactionState extends State<WalletTransaction> {
  final TextEditingController _controller = TextEditingController();
  List<Transaction>? newlist;


  @override
  void initState() {
    super.initState();
    newlist = List.from(widget.list!);
  }

  void filterSearchResults(String query) {
    List<Transaction> dummySearchList = [];
    dummySearchList.addAll(newlist!);
    print(dummySearchList.length);
    if(query.isNotEmpty) {
      List<Transaction>? dummyListData = [];
      dummySearchList.forEach((item) {
        if(item.description!.toLowerCase().contains(query.toLowerCase()) || item.amount!.contains(query)) {
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
        resizeToAvoidBottomInset: false,
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
                height: 95,
            alignment: Alignment.topCenter,
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
        backgroundColor: _theme.backgroundColor,
        body: Container(
          margin: EdgeInsets.only(top: 50),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              color: Color(0XFF009FE3)
          ),
          child:Column(
            children: [
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 25,right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0XFF1433FF),
                ),
                child: TextFormField(
                  onChanged: (value){
                    filterSearchResults(value);
                  },
                  textInputAction: TextInputAction.search,

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
                      newlist!.isEmpty?  Container(
                          height: _size.height*.6,
                          child:Center(
                            child: Text("no_transactions".tr),
                          )) : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: newlist!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TransactionBuilder(
                            onTap: () {
                              final _model =
                              widget.list![index];
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
                                                  color: ConstantColors.primaryCyan,
                                                ),
                                                title:  Text(
                                                  'amount'.tr,
                                                  maxLines: 2,
                                                ),
                                                trailing: Container(
                                                  width: _size.width * 0.3,
                                                  child: Text(
                                                    """${_model.currency!.toUpperCase()} ${processAmount(double.parse(_model.amount!))}""",
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
                                            icon: Icons.description,
                                            title: "transaction_id".tr,
                                            subTitle: _model.transaction_id!,
                                            maxLines: 2,
                                          ),
                                          BottomContain(
                                            title: "date".tr,
                                            icon: Icons.date_range,
                                            subTitle: _model.created_at!,
                                          ),
                                          BottomContain(
                                            title: 'transaction_status'.tr,
                                            icon: Icons.person,
                                            subTitle: _model.transaction_status
                                            ,
                                          ),
                                          BottomContain(
                                            icon: Icons.stacked_bar_chart,
                                            title: "payment_status".tr,
                                            subTitle: _model.payment_status,
                                          ),

                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            leadingText:
                            newlist![index].transaction_status![0],
                            title: newlist![index].description!,
                            description: newlist![index].created_at!,
                            amount:
                            """${newlist![index].currency} ${processAmount(double.parse(newlist![index].amount!))} """,
                          );
                        },
                      ))),
            ],
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
}
