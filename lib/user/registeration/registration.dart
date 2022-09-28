import 'dart:convert';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';

import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';
import 'package:flutter_app/user/registeration/countries_code_model.dart';
import 'package:flutter_app/user/registeration/cubit/register_cubit.dart';
import 'package:flutter_app/user/registeration/reg_argument_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../src/pages/loading_screen/loading_screen.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool ischeck = false;

  String dropdownValue = '';
  String _selectedCountryCode = '';
  String _selectedCountryDialCode ='';
  String _selectedCountry ='';
  bool agree = false;

  late BuildContext myContext;
  List<CountriesCode> list =[];
  List<String> profiles = ["User","Merchant"];
  String profile = '';

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNoController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _profileController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();

  void initState() {
    myContext = context;
    loadSheetDataFromAssets();
    super.initState();
  }
  Future loadSheetDataFromAssets() async {
    var jsonData = await DefaultAssetBundle.of(myContext).loadString('jsonFile/countriesCode.json');
    var data = json.decode(jsonData);
    List<CountriesCode> items = [];
    data.forEach((item) {
      items.add(CountriesCode.fromMap(item));
    });
    list = items;

    print('data : ${list[0].dialCode}');
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body:BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterError) {
              state.errorMessage.showSnackBar(context);
            } else if (state is RegisterSuccess) {
              if(state.userModel.code >=400){
                state.userModel.message.error!.showSnackBar(context);
              }else{
                "Register Successful".showSnackBar(context);
                Navigator.of(context).pushNamedAndRemoveUntil(
                  ScreenNames.login,
                      (Route<dynamic> route) => false,
                );
              }
            }
          },
          builder: (context, state) {
            if (state is RegisterLoading) {
              return const LoadingScreen();
            } else {
              return registerScreen(_size, _theme);
            }
          },
        ),
    );
  }

   Widget registerScreen(Size _size, ThemeData _theme){
    return SingleChildScrollView(
            child: Container(
                child : Column(
                    children: [
                      Stack (
                        children: [
                          Image.asset('assets/new_image_signin.jpg'),
                          Container(
                            margin: EdgeInsets.only(top: 35),
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 35, left: 30),
                            child: Text(
                              "welcome_back".tr,
                              style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              SizedBox(height: _size.height * 0.01),
                              Center(
                                child: Text(
                                  "get_started".tr,
                                  style: _theme.textTheme.headline4!.copyWith(
                                    color: _theme.colorScheme.onSurface,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.75,
                                  ),
                                ),
                              ),
                              SizedBox(height: _size.height * 0.04),


                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: DropdownButtonFormField<String>(
                                  isExpanded: true,
                                  dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(),


                                  ),
                                  items:
                                  profiles.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        "${value}",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          color: _theme.colorScheme.onSecondary,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      profile = newValue!;
                                      print(profile);
                                    });
                                  },
                                  hint: Text(
                                    "select profile type",
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: _theme.colorScheme.onSecondary,
                                    ),
                                  ),
                                  iconEnabledColor: _theme.colorScheme.onSecondary,
                                  iconDisabledColor: _theme.colorScheme.onSecondary,
                                ),
                              ),
                              SizedBox(height: _size.height * 0.03),

                              NewTextField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                                labelText: "email".tr,
                              ),
                              SizedBox(height: _size.height * 0.03),
                              NewTextField(
                                controller: _passwordController,
                                labelText: "password".tr,
                                obscureText: true,
                              ),
                              SizedBox(height: _size.height * 0.03),
                              NewTextField(
                                controller: _confirmPasswordController,
                                labelText: "Confirm Password",
                              ),

                              SizedBox(height: _size.height * 0.03),
                              NewTextField(
                                controller: _firstNameController,
                                labelText: "first_name".tr,
                              ),
                              SizedBox(height: _size.height * 0.03),
                              NewTextField(
                                controller: _lastNameController,
                                labelText: "last_name".tr,
                              ),


                              SizedBox(height: _size.height * 0.03),
                              NewTextField(
                                controller: _usernameController,
                                labelText: "Username",
                              ),

                              SizedBox(height: _size.height * 0.03),
                              profile == "Merchant" ?
                              NewTextField(
                                controller: _companyController,
                                labelText: "Company",
                              ): Container(),

                              SizedBox(height: _size.height * 0.03),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: DropdownButtonFormField<CountriesCode>(
                                  isExpanded: true,
                                  dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(),


                                  ),
                                  items:
                                  list.map<DropdownMenuItem<CountriesCode>>((CountriesCode value) {
                                    return DropdownMenuItem<CountriesCode>(
                                      value: value,
                                      child: Text(
                                        "${value.dialCode} ${value.name}",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          color: _theme.colorScheme.onSecondary,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (CountriesCode? newValue) {
                                    setState(() {
                                      _selectedCountryDialCode = newValue!.dialCode!;
                                      _selectedCountry = newValue.name!;
                                      _selectedCountryCode = newValue.code!;
                                      print(_selectedCountryCode + _selectedCountry + _selectedCountryDialCode);
                                    });
                                  },
                                  hint: Text(
                                    "select_country_code".tr,
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: _theme.colorScheme.onSecondary,
                                    ),
                                  ),
                                  iconEnabledColor: _theme.colorScheme.onSecondary,
                                  iconDisabledColor: _theme.colorScheme.onSecondary,
                                ),
                              ),
                              SizedBox(height: _size.height * 0.04),

                              NewTextField(
                                keyboardType: TextInputType.phone,
                                controller: _mobileNoController,
                                labelText: "mobile_number".tr,
                              ),
                              SizedBox(height: _size.height * 0.03),
                              Row(
                                children: [
                                  Checkbox(
                                      value: agree,checkColor: Colors.greenAccent,
                                  activeColor: Colors.blue,   onChanged: (value) {
                                    setState(() {
                                      agree = value!;
                                    });
                                  }),
                                  const Text("I have agreed to the Terms and Conditions")
                                ],
                              ),
                              SizedBox(height: _size.height * 0.03),

                              Container(
                                margin: EdgeInsets.only(left: 25,right: 25),

                                child: GestureDetector(
                                    onTap: () {
                                      if (!_emailController.text.isValidEmail()) {
                                        "please_enter_a_valid_email_id_to_proceed".tr
                                            .showSnackBar(context);
                                      }
                                      ///Minimum eight characters, at least one letter, one number and one special character:
                                      else if (!_passwordController.text.isValidPassword()) {
                                        "password_should_be_minimum_eight_characters_at_least_one_letter_one_number_and_one_special_character".tr
                                            .showSnackBar(context);
                                      } else if (_passwordController.text != _confirmPasswordController.text) {
                                        "Password Don't Match".showSnackBar(context);
                                      } else if (_emailController.text.isEmpty ||
                                          _lastNameController.text.isEmpty ||
                                          _mobileNoController.text.isEmpty) {
                                        "please_enter_a_valid_data_to_proceed".tr.showSnackBar(context);
                                      } else if (!_selectedCountryDialCode.contains('+')) {
                                        "please_enter_a_valid_country_code_to_proceed".tr
                                            .showSnackBar(context);
                                      }else if(agree == false){
                                        "please agree to the terms and conditions".showSnackBar(context);

                                      }else{
                                        context.read<RegisterCubit>().register(
                                            email: _emailController.text,
                                            password: _passwordController.text,
                                            firstname: _firstNameController.text,
                                            lastname: _lastNameController.text,
                                            number: _mobileNoController.text,
                                            username: _usernameController.text,
                                            profile: profile,
                                            company: _companyController.text,
                                            mobile_code: _selectedCountryDialCode,
                                            country_code: _selectedCountryCode,
                                            country:_selectedCountry,
                                            agree: agree);

                                      }
                                    },
                                    child: Stack(children: [
                                      Container(
                                        width: _size.width*0.8,
                                        height: _size.height*0.08,
                                        padding: EdgeInsets.only(left: 20),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          color: Colors.indigoAccent,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "confirm".tr,
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
                              ),
                              SizedBox(height: _size.height * 0.05),
                            ],
                          )),
                    ])));
  }
}
