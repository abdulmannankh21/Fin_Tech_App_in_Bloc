import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/constant/constant_data.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/user/registeration/registration.dart';
import 'package:get/get.dart';


class StartPageScreen extends StatelessWidget {
  const StartPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        body:  Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpeg"), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 40),
                child: Image.asset("assets/logowhite.png",height: 50,)

              ),
              Container(
                height: _size.height*0.65,
                width: _size.width*0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(ScreenNames.login);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: _size.width*0.8,
                              height: _size.height*0.065,
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 16),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: ConstantColors.welcome_sign_up_border_color,
                              ),
                              child: Text(
                                "sign_in".tr,
                                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: _size.width*0.8,
                              height: _size.height*0.029,
                              alignment: Alignment.topRight,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)
                                ),
                                child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  color: ConstantColors.welcome_sign_in_second_circle,
                                  width: 30,
                                ),
                              ),
                            ),
                            Container(
                              width: _size.width*0.8,
                              height: _size.height*0.034,
                              alignment: Alignment.topRight,
                              child: ClipRRect(
                                borderRadius:  const BorderRadius.only(
                                    bottomLeft: Radius.circular(100),
                                    // topLeft: Radius.circular(5)
                                    topRight: Radius.circular(80)),
                                child: Container(
                                  color: ConstantColors.welcome_sign_in_first_circle,
                                  width: 25,
                                ),
                              ),
                            ),
                          ],
                        )),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Registration(),
                            ),
                          );
                        },
                        child: Container(
                          width: _size.width*0.8,
                          height: _size.height*0.065,
                          padding: const EdgeInsets.only(left: 16, right: 5),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              border:
                              Border.all(color: ConstantColors.welcome_sign_up_border_color, width: 1)),
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("sign_up".tr,style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                color: ConstantColors.welcome_sign_up_text_color,
                                fontWeight: FontWeight.w400,
                              ),),
                              const Icon(
                                Icons.arrow_forward,
                                color: ConstantColors.welcome_sign_up_text_color,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
