

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../custom_app_bar.dart';
import '../../../src/pages/loading_screen/loading_screen.dart';
import '../process_recharge/cubit/process_recharge_cubit.dart';


class ProcessRecharge extends StatefulWidget {
  final countryIso,operatorId,amount,phoneNumber,iconUrl;
  const ProcessRecharge({Key? key,required this.operatorId,required this.countryIso,required this.phoneNumber,required this.amount,required this.iconUrl}) : super(key: key);

  @override
  _ProcessRechargeState createState() => _ProcessRechargeState();
}

class _ProcessRechargeState extends State<ProcessRecharge> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProcessRechargeCubit>().processRecharge(widget.countryIso, widget.operatorId.toString(),widget.amount,widget.phoneNumber);
    });
  }


  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        appBar: CustomAppBar(
          title: "Result",
        ),
        body: BlocBuilder<ProcessRechargeCubit,ProcessRechargeState>(
          builder:(context, state) {
            if(state is ProcessRechargeLoadingState){
              return LoadingScreen();
            }else if(state is ProcessRechargeSuccesstate) {
              return Container(
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Container(alignment: Alignment.center,padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.16),
                        child:
                        CircleAvatar(child:Icon(CupertinoIcons.checkmark_alt_circle,
                          color: Color(0XFF20C968),size: 150,),maxRadius: 30,backgroundColor: Colors.transparent)),
                    SizedBox(height: _size.height*0.15),
                    Container(alignment: Alignment.center,child: Text(state.model['message'])),
                    Padding(padding: EdgeInsets.only(left: 10),
                        child:Image.network(widget.iconUrl,height: 50,width: 50)),

                    state.model['data']['response']['operatorName'] != null ?
                    Text("Name :" + state
                        .model['data']['response']['operatorName']):Container(),
                    SizedBox(height: 10),
                    state.model['data']['response']['transactionId'] != null ?
                      Text("Transaction Id :" + state
                          .model['data']['response']['transactionId'].toString()):Container(),
                    SizedBox(height: 10),
                    // state.model['data']['response']['pinDetail'] != null ?
                    //   Text("Info 1 :" + state
                    //       .model['data']['response']['pinDetail']['info1']):Container(),
                    // SizedBox(height: 10),
                    // state.model['data']['response']['pinDetail'] != null ?
                    //   Text("Info 2 :" + state
                    //       .model['data']['response']['pinDetail']['info2']):Container(),
                    // SizedBox(height: 10),
                    // state.model['data']['response']['pinDetail'] != null ?
                    //   Text("Info 3 :" + state
                    //       .model['data']['response']['pinDetail']['info3']):Container(),
                    // SizedBox(height: 10),
                    // state.model['data']['response']['pinDetail'] != null ?
                    //   Text("Code :" +
                    //       state.model['data']['response']['pinDetail']['code']):Container(),
                    // SizedBox(height: 10),
                    // state.model['data']['response']['pinDetail'] != null ?
                    //   Text("IVR :" +
                    //       state.model['data']['response']['pinDetail']['ivr']):Container(),
                    // SizedBox(height: 10),
                    // state.model['data']['response']['pinDetail'] != null ?
                    //   Text("Validity :" + state
                    //       .model['data']['response']['pinDetail']['validity']):Container(),
                  ]
                ),
              );
            }else if(state is ProcessRechargeErrorState){
              return Container(
                child: Center(
                  child: Text(state.errorMessage),
                ),
              );
            }else{
              return Container();
            }

          },
        ));
  }

}