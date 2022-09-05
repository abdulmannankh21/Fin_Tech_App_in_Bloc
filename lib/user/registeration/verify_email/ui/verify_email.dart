import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';
import 'package:flutter_app/user/registeration/registration.dart';
import 'package:flutter_app/user/registeration/verify_email/cubit/verify_email_cubit.dart';
import 'package:flutter_app/user/registeration/verify_email/repository/verify_email_repo.dart';
import 'package:flutter_app/user/registeration/verify_mobile/ui/verify_mobile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';


import '../../../../../../core/utils/commen_extensions.dart';

class VerifyEmail extends StatefulWidget {

  final String email;
  final String token;
  final String actionType;
  const VerifyEmail({Key? key,
    required this.token,
    required this.email,
    required this.actionType,

  }) : super(key: key);

  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final TextEditingController _otpController = TextEditingController();


  bool _obscureText = true;
  String otp ="";

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<VerifyEmailCubit,VerifyEmailState>(
        listener: (context, state) {
          if (state is VerifyEmailError) {
            state.errorMessage.showSnackBar(context);
          } else if (state is VerifyEmailSuccessfully) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyMobile(email: widget.email,token : widget.token,actionType: widget.actionType,)));
          }
        },
        builder: (context, state) {
          if (state is VerifyEmailLoading) {
            return const LoadingScreen();
          } else {
            return _verifyEmailScreen(_size, _theme);
          }
        },
      ),
    );
  }

  Widget _verifyEmailScreen(Size _size, ThemeData _theme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/otp.png"),
              width: _size.width*0.8,
              height:_size.height*0.5,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "otp_verification".tr,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w700,
                fontSize: 25

            )),
            const SizedBox(
              height: 20,
            ),
             Text(
              "enter_otp_sent_to_the_email".tr,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            OTPTextField(
              length: 6,
              keyboardType: TextInputType.number,
              width: MediaQuery.of(context).size.width,

              style: TextStyle(fontSize: 16, color: Colors.black),
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              fieldStyle: FieldStyle.underline,
              onChanged: (pin){

                otp=pin;
              },
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (){
                if(otp !=  "" && otp.length == 6){
                  context.read<VerifyEmailCubit>().verifyEmail(
                    vericode: otp,
                    email: widget.email,
                    token: widget.token,
                  );
                }else{
                  "please_enter_otp".tr.showSnackBar(context);
                }

              },
            child: Stack(
              children: [
                Container(
                  width: 200,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                ),
                Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.topLeft,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(70),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(16)),
                    child: Container(
                      width: 40,
                      height: 45,
                      color: ConstantColors.otp_first_circle,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.bottomRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(76),
                        topRight: Radius.circular(10)),
                    child: Container(
                      width: 40,
                      height: 35,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  child: Text(
                    "verify_email".tr,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                    ) ),
                )
              ],
            ))
          ],
        ),
    );
  }
}
