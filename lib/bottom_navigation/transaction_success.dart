import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:get/get.dart';


class TransactionSuccess extends StatefulWidget{

  final message;
  const TransactionSuccess({Key? key,
    required this.message
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransactionSuccessState();
  }

}
class TransactionSuccessState extends State<TransactionSuccess>{
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
        ),),
        backgroundColor: ConstantColors.appBar,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40))
      ),shadowColor: Color(0XFF87F0FF),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,

          padding: EdgeInsets.only(top: 80),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.16),
                    child:
                    const CircleAvatar(maxRadius: 30,backgroundColor: Colors.transparent, child:Icon(CupertinoIcons.checkmark_alt_circle,
                      color: Color(0XFF20C968),size: 150,))),
                SizedBox(height: 100,),
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
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFF2B47FC),width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text("ok".tr,style: TextStyle(
                        fontSize: 24,
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