import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/user/logout/cubit/logout_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/theme/storage_manager.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import '../../core/utils/commen_extensions.dart';
import '../core/utils/shared_preferences.dart';
import '../drop_down_items_list/DropDownItems.dart';


class Profile extends StatefulWidget {
  final image;
  final name;
  final phoneNumber;
  const Profile({Key? key, required this.image,required this.name,required this.phoneNumber}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isDarkTheme = false;
  String image = '';
  String name = '';

  final ImagePicker _picker = ImagePicker();

  void _pickImage(ImageSource imageSource) async {
    final XFile? image = await _picker.pickImage(source: imageSource);
    if (image != null) {
      context.read<LogoutCubit>().changeProfilePic(file: image);
    }
  }

  @override
  void initState() {
    super.initState();
    image = widget.image;
    name = widget.name;
    checkDarkThemeStatus();
  }


  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("select_option".tr),
          actions: <Widget>[
            TextButton(
              child: Text('camera'.tr),
              onPressed: () {
                _pickImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('gallary'.tr),
              onPressed: () {
                _pickImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void checkDarkThemeStatus() async {
    print(name);
    readData('themeMode').then((value) {
      // print('value read from storage: $value');
      var themeMode = value ?? 'light';
      if (themeMode == 'dark') {
        setState(() {
          isDarkTheme = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    final _size = MediaQuery.of(context).size;
    final _themeData = Theme.of(context);
    final _constSpacing = SizedBox(height: _size.height * 0.02);
    return Scaffold(

      body: BlocConsumer<LogoutCubit, LogoutState>(
        listener: (context, state) {
          if (state is LogOutError) {
            if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken ){
              Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)));
          } else if (state is ProfileChangeSucess) {
            // ignore: unrelated_type_equality_checks
            if(state.model.code == 200){
              image = state.model.merchant_logo!;
              print(image);
              "profile_image_updated_successfully".tr.showSnackBar(context);
            }else{
              "Error Ocurred, Try again".showSnackBar(context);
            }

          } else if (state is LogOutSuccess) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              ScreenNames.login,
                  (Route<dynamic> route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is LogOutLoading) {
            return const LoadingScreen();
          } else if(state is ProfileChangeSucess){
            return SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 400,
                      margin: EdgeInsets.only(top: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          bottomLeft: Radius.circular(200),
                          // bottomRight: Radius.circular(100)
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                            color: Color(0XFFFC4600),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(150)
                        ),
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Color(0XFF009FE3),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(height: 45,),
                          GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.arrow_back,color: ConstantColors.welcome_sign_up_text_color,size: 30,)),
                          SizedBox(height: 45,),
                          Text(
                            "profile".tr,
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: _showMyDialog,
                                    child: Container(
                                      height:80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            (state.model.merchant_logo!),
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.indigoAccent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),

                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(
                                            color: ConstantColors.welcome_sign_up_text_color,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none,
                                            fontSize: 24),
                                        textScaleFactor: 1.1,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "first_name".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                color: ConstantColors.welcome_sign_up_text_color,
                                fontSize: 14,
                                decoration: TextDecoration.none),
                          ),
                          // Divider(
                          //   color: Colors.black12,
                          //   thickness: 1,
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // Text(
                          //   "last_name".tr,
                          //   style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 18,
                          //       decoration: TextDecoration.none),
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // Text(
                          //   widget.lastname,
                          //   style: TextStyle(
                          //       color: ConstantColors.welcome_sign_up_text_color,
                          //       fontSize: 14,
                          //       decoration: TextDecoration.none),
                          // ),
                          Divider(
                            color: Colors.black12,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "phone_number".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            widget.phoneNumber,
                            style: TextStyle(
                                color: ConstantColors.welcome_sign_up_text_color,
                                fontSize: 14,
                                decoration: TextDecoration.none),
                          ),
                          Divider(
                            color: Colors.black12,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: DropdownButton(
                              value: "Select language",icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                              items: DropDownItems.dropdownItems,
                              onChanged: (String? newValue){
                                Locale? locale=DropDownItems.locale[newValue];
                                MySharedPreferences.setLanguageValue(newValue!);
                                DropDownItems.updateLanguage(locale!);
                                // setState(() {
                                //   selectedValue = newValue!;
                                // });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: SizedBox(
                                width: 200,
                                height: 40,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    context.read<LogoutCubit>().logOut();
                                  },
                                  icon: ImageIcon(AssetImage('assets/logout.png'),color: ConstantColors.welcome_sign_up_text_color,size: 45),
                                  label: Text(
                                    "sign_out".tr,
                                    style: TextStyle(color: ConstantColors.welcome_sign_up_text_color,
                                    ),
                                  ),style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: ConstantColors.welcome_sign_up_text_color)
                                        )
                                    )
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            );

          }else{
            return SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 400,
                      margin: EdgeInsets.only(top: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          bottomLeft: Radius.circular(200),
                          // bottomRight: Radius.circular(100)
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(150)
                        ),
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 45,),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.arrow_back,color: ConstantColors.welcome_sign_up_text_color,size: 30,)),
                          SizedBox(height: 45,),
                          Text(
                            "profile".tr,
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: _showMyDialog,
                                    child: Container(
                                      height:80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            (image.isEmpty || image == '')
                                                ? Constant.defaultImageAvatr
                                                : image,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),

                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(
                                            color: ConstantColors.welcome_sign_up_text_color,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none,
                                            fontSize: 24),
                                        textScaleFactor: 1.1,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "first_name".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                color: ConstantColors.welcome_sign_up_text_color,
                                fontSize: 14,
                                decoration: TextDecoration.none),
                          ),
                          // Divider(
                          //   color: Colors.black12,
                          //   thickness: 1,
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // Text(
                          //   "last_name".tr,
                          //   style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 18,
                          //       decoration: TextDecoration.none),
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // Text(
                          //   widget.lastname,
                          //   style: TextStyle(
                          //       color: ConstantColors.welcome_sign_up_text_color,
                          //       fontSize: 14,
                          //       decoration: TextDecoration.none),
                          // ),
                          Divider(
                            color: Colors.black12,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "phone_number".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            widget.phoneNumber,
                            style: TextStyle(
                                color: ConstantColors.welcome_sign_up_text_color,
                                fontSize: 14,
                                decoration: TextDecoration.none),
                          ),
                          Divider(
                            color: Colors.black12,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: DropdownButton(
                              value: "Select language",icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                              items: DropDownItems.dropdownItems,
                              onChanged: (String? newValue){
                                Locale? locale=DropDownItems.locale[newValue];
                                MySharedPreferences.setLanguageValue(newValue!);
                                DropDownItems.updateLanguage(locale!);
                                // setState(() {
                                //   selectedValue = newValue!;
                                // });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: SizedBox(
                                width: 200,
                                height: 40,
                                child: ElevatedButton.icon(
                                  onPressed: () async {
                                    await MySharedPreferences().setBooleanValue(key: Constant.firstTimeOpen, value: false);
                                    Navigator.pushNamedAndRemoveUntil(context, ScreenNames.login, (route) => false);
                                  },
                                  icon: ImageIcon(AssetImage('assets/logout.png'),color: ConstantColors.welcome_sign_up_text_color,size: 45),
                                  label: Text(
                                    "sign_out".tr,
                                    style: TextStyle(color: ConstantColors.welcome_sign_up_text_color,
                                    ),
                                  ),style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: ConstantColors.welcome_sign_up_text_color)
                                        )
                                    )
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            );
          }
        },
      ),
    );
  }

  _sendIssue(BuildContext context) async {
    final String template = "---------DO NOT EDIT ABOVE THIS LINE----------";

    final Uri params = Uri(
      scheme: 'mailto',
      path: Constant.helpCenterEmail,
      query:
      'subject=Report Issue&body=\n\n$template \n\nWrite your message here or attach screenshot :- ', //add subject and body here
    );
    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
