import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/bottom_navigation/airtime/pages/process_recharge.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';



import '../../../custom_app_bar.dart';
import '../../../src/constant/constant_colors.dart';
import '../../../src/pages/loading_screen/loading_screen.dart';
import '../../../src/widget/xenio_primary_button.dart';
import '../../../src/widget/xenio_text_field.dart';
import '../get_operator/cubit/airtime_recharge_cubit.dart';
import '../get_operator/model/get_operator_model.dart';
import '../model/countries_model/airtime_countries_model.dart';

class AirtimeRecharge extends StatefulWidget {
  final countryIso, operatorId;
  const AirtimeRecharge(
      {Key? key, required this.operatorId, required this.countryIso})
      : super(key: key);

  @override
  _AirtimeRechargeState createState() => _AirtimeRechargeState();
}

class _AirtimeRechargeState extends State<AirtimeRecharge> {
  List<CountriesModel> countries = [];
  int _selectedIndex = -1;
  String amount = '';

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<AirtimeRechargeCubit>()
          .getOperatorById(widget.countryIso, widget.operatorId.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
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
                              SizedBox(width: _size.width*0.1),

                              Text("Airtime Select Amount",
                                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                            ]
                        )
                      ],
                    ),
                  ),
                ]
            )
        ),
        resizeToAvoidBottomInset: false,
        body: BlocBuilder<AirtimeRechargeCubit, AirtimeRechargeState>(
          builder: (context, state) {
            if (state is AirtimeRechargeLoadingState) {
              return LoadingScreen();
            } else if (state is AirtimeRechargeErrorState) {
              return Container(
                child: Center(
                  child: Text(state.errorMessage),
                ),
              );
            } else if (state is AirtimeRechargeSuccesstate) {
              return successScreen(state.model);
            } else {
              return Container();
            }
          },
        ));
  }

  Widget successScreen(GetOperatorModel model) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.all(14),
        child: Column(children: [
          Container(
              width: _size.width,
              height: _size.height * 0.3,
              child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 14, left: 14),
                          child:
                          Text("Phone Number", style: TextStyle(fontSize: 24))),
                      Container(
                          margin: const EdgeInsets.only(left: 10,top: 10),
                          child: const Text(
                              "Enter phone number without country code",
                              style: TextStyle(fontSize: 14))),

                      Container(
                          margin: const EdgeInsets.only(left: 10,top: 10),
                          child: const Text("e.g. +39 31688991, Enter 31688991",
                              style: TextStyle(fontSize: 14))),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.network(model.data.response.logoUrls[0],
                                  height: 25, width: 25)),
                          Container(
                              margin: const EdgeInsets.only(top: 14),
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: XenioTextField(
                                hintText: "Enter Phone Number",
                                keyboardType: TextInputType.number,
                                controller: _controller,
                              )),
                        ],
                      ),

                    ],
                  ))),
          const SizedBox(height: 4),
          Container(
              height: _size.height * 0.38,
              child: Card(
                  child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 14, left: 14),
                              child:
                              const Text("Amount", style: TextStyle(fontSize: 24))),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),

                              itemCount: model.data.response.fixedAmounts.length > 0
                                  ? model.data.response.fixedAmounts.length
                                  : model.data.response.suggestedAmounts.length,
                              itemBuilder: (BuildContext ctx, index) {
                                final fixedAmounts = model.data.response.fixedAmounts;
                                final localFixedAmounts = model.data.response.localFixedAmounts;
                                final fixedAmountsDescriptions = model.data.response.fixedAmountsDescriptions;
                                print(fixedAmountsDescriptions);
                                final suggestedAmounts =
                                    model.data.response.suggestedAmounts;
                                return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedIndex = index;
                                        amount = fixedAmounts[index].toString();
                                      });
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.all(1),
                                        child: Card(
                                            child: Container(
                                                padding: EdgeInsets.all(10),
                                                color: _selectedIndex == index
                                                    ? ConstantColors.welcome_sign_in_second_circle
                                                    : Colors.white,

                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [

                                                    Row(
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(left: 0),
                                                        child: Image.network(model.data.response.logoUrls[0],
                                                            height: 25, width: 25)),
                                                    SizedBox(width: 10,),
                                                    fixedAmountsDescriptions.length > 0 ?
                                                    Text(
                                                      fixedAmountsDescriptions[fixedAmounts[index].toString()]
                                                          .toString(),
                                                      style: TextStyle(fontSize: 12),
                                                    ):Container(),
                                                  ],
                                                    ),

                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          fixedAmounts.length > 0
                                                              ? model.data.response
                                                              .senderCurrencySymbol! + " "+fixedAmounts[index]
                                                              .toString()
                                                              : model.data.response
                                                              .senderCurrencySymbol! + " "+suggestedAmounts[index]
                                                              .toString(),
                                                          style: const TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                                                        localFixedAmounts.length > 0 ?
                                                        Text(
                                                          model.data.response
                                                              .destinationCurrencySymbol! + " " + localFixedAmounts[index]
                                                              .toString(),
                                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),
                                                        ):Container(),

                                                      ],
                                                    ),


                                                  ],)))));
                              })
                        ],
                      )))),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

            child: GestureDetector(
                onTap: () {
                  if (_controller.text.contains(".") ||
                      _controller.text.contains(",") ||
                      _controller.text.contains("-") ||
                      _controller.text.contains(" ")) {
                    "Special Character Not Allowed in Phone Number"
                        .showSnackBar(context);
                  } else if (_controller.text.isEmpty) {
                    "Please Enter Phone Number".showSnackBar(context);
                  } else if (_selectedIndex == -1) {
                    "Please select amount".showSnackBar(context);
                  } else {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ProcessRecharge(
                          operatorId: widget.operatorId,
                          countryIso: widget.countryIso,
                          phoneNumber: _controller.text,
                          amount: amount,
                          iconUrl: model.data.response.logoUrls[0],
                        )));
                  }

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
                          "Recharge",
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

        ]));
  }
}
