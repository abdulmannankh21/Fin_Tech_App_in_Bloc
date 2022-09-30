import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/bottom_navigation_home.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';
import 'package:flutter_app/user/registeration/registration.dart';
import 'package:flutter_app/user/registeration/transaction_webview/ui/transaction_webview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as loc;
import 'package:get/get.dart';

import '../../../../core/utils/commen_extensions.dart';
import '../../../../src/Language/app_localization.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if(state is LoginError){
            state.errorMessage.showSnackBar(context);
          }
          if (state is LoginSuccess) {
            if(state.userModel.result!.toLowerCase() == 'failure'){
              state.userModel.message!.showSnackBar(context);
            }else {
              Navigator.of(context).pushNamedAndRemoveUntil(
                ScreenNames.bottomNavigationHome,
                    (Route<dynamic> route) => false,
              );

            }
          } else if (state is ForgetPasswordSuccess) {
            state.model.message.showSnackBar(context);
          }
        },
        builder: (context, state) {
          if (state is LoginLoading) {
            return const LoadingScreen();
          } else {
            return _loginScreen(_size, _theme);
          }
        },
      ),
    );
  }

  Widget _loginScreen(Size _size, ThemeData _theme) {
    return SingleChildScrollView(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,

          child: Column(
            children: [
              Stack (
                children: [
                  Image.asset('assets/new_image_signin.jpg'),
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 35, left: 40),
                    child: Text(
                      //"${loc.AppLocalizations.of(context)?.beneficiaries}",
                      "Login",
                      style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 0),

                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "sign_in".tr,
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),

                    NewTextField(controller:_emailController,labelText: "email".tr),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !_obscureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ConstantColors.welcome_sign_up_text_color,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        focusColor: ConstantColors.welcome_sign_up_text_color,

                        enabledBorder: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(width: 2, color: ConstantColors.welcome_sign_up_text_color),

                        ),
                        labelText: 'password'.tr,
                      ),


                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Text(
                      "forgot_password".tr,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: ConstantColors.welcome_sign_up_text_color,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25,right: 25),

                      child: GestureDetector(
                          onTap: () {
                            context.read<LoginCubit>().login(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
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
                                    "sign_in".tr,
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
                              width: MediaQuery.of(context).size.width,
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
                    )
                  ],
                ),
              )
            ],
          ),

        ));
  }
}
