
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:get/get.dart';


class TransactionError extends StatefulWidget{

  final message;
  const TransactionError({Key? key,
    required this.message
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransactionErrorState();
  }

}
class TransactionErrorState extends State<TransactionError>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back,color: Colors.white,),
          onTap: (){
            Navigator.of(context).pop();
          },
        ),
        centerTitle:true,
        title: Text("transactions".tr,style: TextStyle(
            color: Colors.white
        )),
        shadowColor: Color(0XFF87F0FF),
        backgroundColor: ConstantColors.appBar,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40))
      ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 80),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.001),
                    child: Container(height:150,child: Image.asset('assets/error.png'))),const SizedBox(height: 100),
                Text(widget.message,style: TextStyle(
                    color: ConstantColors.welcome_sign_up_text_color,fontSize: 30
                ),textAlign: TextAlign.center,),
                SizedBox(height: 100),

                GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        ScreenNames.bottomNavigationHome,
                            (Route<dynamic> route) => false,
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFF2B47FC),width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text("ok".tr,style: TextStyle(
                        color: Color(0XFF2B47FC),decoration: TextDecoration.none,

                      )),
                    ))
              ],
            ),
          )

      ),
    );
  }
}