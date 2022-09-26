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
        appBar: CustomAppBar(
          title: "Airtime Select Amount",
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
              height: _size.height * 0.27,
              child: Card(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 14, left: 14),
                      child:
                          Text("Phone Number", style: TextStyle(fontSize: 24))),
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
                  Container(
                      margin: const EdgeInsets.only(left: 80),
                      child: const Text(
                          "Enter phone number without country code",
                          style: TextStyle(fontSize: 14))),
                  Container(
                      margin: const EdgeInsets.only(left: 80, top: 10),
                      child: const Text("e.g. +39 31688991, Enter 31688991",
                          style: TextStyle(fontSize: 14))),
                ],
              ))),
          const SizedBox(height: 20),
          Container(
              height: _size.height * 0.4,
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
                                padding: EdgeInsets.all(2),
                                child: Card(
                                    child: Container(
                                        padding: EdgeInsets.all(10),
                                        color: _selectedIndex == index
                                            ? Colors.orange
                                            : Colors.white,

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                          Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              fixedAmounts.length > 0
                                                  ? fixedAmounts[index]
                                                      .toString() +
                                                  " " +
                                                  model.data.response
                                                      .senderCurrencySymbol!
                                                  : suggestedAmounts[index]
                                                          .toString() +
                                                      " " +
                                                      model.data.response
                                                          .senderCurrencySymbol!,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),

                                            fixedAmountsDescriptions.length > 0 ?
                                            Text(
                                              fixedAmountsDescriptions[fixedAmounts[index].toString()]
                                                  .toString(),
                                              style: TextStyle(fontSize: 12),
                                            ):Container(),
                                          ],
                                        ),
                                            localFixedAmounts.length > 0 ?
                                            Text(
                                              localFixedAmounts[index]
                                                  .toString() + " " +
                                            model.data.response
                                                .destinationCurrencySymbol!,
                                              style: TextStyle(fontSize: 12),
                                            ):Container(),

                                    ],)))));
                      })
                ],
              )))),
          SizedBox(height: 30),
          XenioPrimaryButton(
              buttonText: "Recharge Now",
              color: ConstantColors.primaryCyan,
              buttonTextColor: Colors.white,
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
              }),
        ]));
  }
}
