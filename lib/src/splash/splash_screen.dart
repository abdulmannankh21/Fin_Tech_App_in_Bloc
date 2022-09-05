import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/bottom_navigation/bottom_navigation_home.dart';
import 'package:flutter_app/core/data/endpoint/endpoint_url.dart';
import 'package:flutter_app/core/data/keys/keys.dart';
import 'package:flutter_app/src/language/language_data.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/constant/constant_data.dart' as constance;
import 'package:flutter_app/user/login/data/login_model/user_model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/shared_preferences.dart';
import '../../drop_down_items_list/DropDownItems.dart';
import '../../user/registeration/transaction_webview/ui/transaction_webview.dart';
import '../constant/constant.dart';
import 'package:local_auth/local_auth.dart';
class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  final LocalAuthentication auth = LocalAuthentication();
  @override
  void initState() {
    myContext = context;
    changeAppLanguage();
    _loadNextScreen();
    super.initState();
  }

  late BuildContext myContext;

  _loadNextScreen() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    if (!mounted) return;
    try {
      if (constance.allTextData.allText == null ||
          constance.allTextData.allText!.isEmpty) {
        constance.allTextData = AllTextData.fromJson(
          json.decode(
            await DefaultAssetBundle.of(myContext).loadString(
              "jsonFile/languagetext.json",
            ),
          ),
        );
      }
    } on Exception catch (e) {
      print(e);
    }
    checkUserStatus();
  }

  checkUserStatus() async {
    final bool _isFirstTimeOpen =
        await MySharedPreferences().getBooleanValue(Constant.firstTimeOpen);
debugPrint(_isFirstTimeOpen.toString());
    if (!_isFirstTimeOpen) {
      Navigator.pushReplacementNamed(context, ScreenNames.startPageScreen);
    } else {
     var  isAuthenticate= await _authenticateWithBiometrics();
     debugPrint(isAuthenticate.toString());
    if(isAuthenticate){
      var isSuccess = await login();
      if(isSuccess){
        Navigator.of(context).pushNamedAndRemoveUntil(
          ScreenNames.bottomNavigationHome,
              (Route<dynamic> route) => false,
        );
      }

    }else{
      Navigator.pushReplacementNamed(context, ScreenNames.startPageScreen);
    }
    }
    // Navigator.pushReplacementNamed(context, ScreenNames.startPageScreen);
  }
  Future<bool> login() async {
    const path = "${EndPointURL.baseURL}/api/loginapp";
    final email = await MySharedPreferences().getStringValue(Constant.email);
    final password = await MySharedPreferences().getStringValue(Constant.password);
    final _option =  Options(headers: {'api-key': Keys.apiKey});
    Dio _dio = Dio();

    final _response = await _dio.post(
      path,
      data: {
    "user": {"email": email, "password": password}
    },
      options: _option,
    );
    final user  = UserModel.fromJson(json.decode(_response.toString()));
    if(user.result == "success") {
      await MySharedPreferences().setStringeanValue(
        key: Constant.logintoken,
        value: user.token!,
      );
      await MySharedPreferences().setStringeanValue(
        key: Constant.profileImage,
        value: user.user!.merchant_logo!,
      );
      return true;
    } else {
      return false;
    }

  }

  Future<bool> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      debugPrint("authenticating.............");
      authenticated = await auth.authenticate(
        localizedReason:
        'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      return authenticated;
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }


  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: _size.height,
        width: _size.width,
        decoration: const BoxDecoration(
          gradient: ConstantColors.primaryGradientBackground,
        ),
        child: Center(
          child: Image.asset(
            constance.ConstanceData.whiteLogo,
            fit: BoxFit.cover,
            width: _size.width * 0.6,
          ),
        ),
      ),
    );
  }

  void changeAppLanguage()async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    String? language=myPrefs.getString("language");
    if(language!=null){
      if(language.isNotEmpty){
        Locale? locale=DropDownItems.locale[language];
        DropDownItems.updateLanguage(locale!);
      }
    }
  }
}
