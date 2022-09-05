import 'dart:convert';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/transaction_error.dart';
import 'package:flutter_app/bottom_navigation/transaction_success.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/cubit/add_on_user_cubit.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/mode/get_state_codes_model.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/constant/countries_code_map.dart' as CountriesMap;
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/user/registeration/countries_code_model.dart';
import 'package:flutter_app/core/repository/general_data_queries_repo.dart';


import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';

import 'package:flutter_app/user/registeration/enums/countries.dart';
import 'package:flutter_app/user/registeration/reg_argument_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class CreateAddOnUser extends StatefulWidget {
  const CreateAddOnUser({Key? key}) : super(key: key);

  @override
  _CreateAddOnUserState createState() => _CreateAddOnUserState();
}

class _CreateAddOnUserState extends State<CreateAddOnUser> {

  String _selectedCountryCode = '';

  late BuildContext myContext;
  List<CountriesCode> list =[];

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNoController = TextEditingController();
  final TextEditingController _mothersNamedController = TextEditingController();
  final TextEditingController _line1Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryCodeController = TextEditingController();

  final TextEditingController _zipController = TextEditingController();
  List<GetStateCodesModel> statesModel = [];
  List<String> statesName = [];
  String _selectedCountry = '';
  String _selectedState = '';



  DateTime? _selectedDate;
  Future<void> _getStates(String countryCode) async {
    if(statesName.isNotEmpty){
      statesName.clear(); }
    final statesModel =
    await GetIt.I<GeneralDataQueriesRepo>().getStateCodes(countryCode);
    statesModel.forEach((e) {
      if (e.stateName != null) {
        statesName.add(e.stateName!);
      }
    });

    print(statesModel);
    // debugPrint("countriesName: $countriesName");
    setState(() {});
  }

  //Method for showing the date picker
  void _pickDateDialog() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

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
        body: BlocConsumer<AddOnUserCubit, AddOnUserState>(
          listener: (context, state) {
            if (state is AddOnUserCreateSuccesstate) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionSuccess(message: state.model['message'])));

            } else if (state is AddOnUserErrorState) {
              if(state.errorMessage == Constant.tokenExpired || state.errorMessage == Constant.invalidToken){
                Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
              }else{
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionError(message: state.errorMessage)));
              }


            }
          },
          builder: (context, state) {
            if (state is AddOnUserLoadingState) {
              return LoadingScreen(loadingText: state.loadingMessage);
            } else {
              return _createAddOnUserScreen(_size, _theme);
            }
          },
        ));
  }


  Widget _createAddOnUserScreen(Size _size, ThemeData _theme) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return  SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack (
                children: [
                  Image.asset('assets/new_image_signin.jpg'),
                  Container(
                      margin: EdgeInsets.only(top: 35),
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 35, left: 15),
                      child: Row(

                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.arrow_back,color: Colors.white,)),
                          SizedBox(width: 35,),
                          Text(
                            "Create AddOn \n User",
                            style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
              SizedBox(height: _size.height * 0.03),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [


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
                controller: _firstNameController,
                labelText: "first_name".tr,
              ),
              SizedBox(height: _size.height * 0.03),
              NewTextField(
                controller: _lastNameController,
                labelText: "last_name".tr,
              ),

              SizedBox(height: _size.height * 0.03),
              Container(
                width: MediaQuery.of(context).size.width,

                child: DropdownButtonFormField<CountriesCode>(
                  isExpanded: true,
                  dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                  decoration:const InputDecoration(
                      enabledBorder: UnderlineInputBorder()
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
                      _selectedCountryCode = newValue!.dialCode!;
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
              Container(
                width: MediaQuery.of(context).size.width,

                child: DropdownButtonFormField<Countries>(
                  isExpanded: true,
                  dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                  decoration:const InputDecoration(
                      enabledBorder: UnderlineInputBorder()
                  ),
                  items:
                  Countries.values.map<DropdownMenuItem<Countries>>((Countries value) {
                    return DropdownMenuItem<Countries>(
                      value: value,
                      child: Text(
                        value.name.toString(),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: _theme.colorScheme.onSecondary,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (Countries? newValue) {
                    setState(() {
                      _selectedCountry = newValue.toString().split(".")[1];
                      _getStates(CountriesMap.CountriesCode.countriesCodeMap[_selectedCountry]!);
                    });
                  },
                  hint: Text(
                    "select_country".tr,
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
                controller: _line1Controller,
                labelText: "address".tr,
              ),
              SizedBox(height: _size.height * 0.03),
              NewTextField(
                controller: _cityController,
                labelText: "city".tr,
              ),
              SizedBox(height: _size.height * 0.03),
              Container(
                width: MediaQuery.of(context).size.width,

                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                  decoration:const InputDecoration(
                      enabledBorder: UnderlineInputBorder()
                  ),
                  items:
                  statesName.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: _theme.colorScheme.onSecondary,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedState = newValue!;
                    });
                  },
                  hint: Text(
                    "select_state".tr,
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
                controller: _zipController,
                labelText: "zip_code".tr,
              ),
              SizedBox(height: _size.height * 0.03),
              InkWell(
                onTap: () {
                  _pickDateDialog();
                },
                child: Container(
                    alignment: Alignment.center,
                    width: _size.width,
                    height: _size.height * 0.06,

                    child: Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          color: _theme.colorScheme.onSecondary,
                        ),
                        SizedBox(width: _size.width * 0.04),
                        _selectedDate == null
                            ? Text(
                          "date_of_birth".tr,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: _theme.colorScheme.onSecondary,
                          ),
                        )
                            : Text(
                          _selectedDate.toString().formatDate(),
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: _size.height * 0.03),
              NewTextField(
                controller: _mothersNamedController,
                labelText: "mother_name".tr,
              ),
              SizedBox(height: _size.height * 0.05),
                    Container(
                      margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

                      child: GestureDetector(
                          onTap: () {
                            if (!_emailController.text.isValidEmail()) {
                              "please_enter_a_valid_email_id_to_proceed".tr
                                  .showSnackBar(context);
                            }else if (!_passwordController.text.isValidPassword()) {
                              "password_should_be_minimum_eight_characters_at_least_one_letter_one_number_and_one_special_character".tr
                                  .showSnackBar(context);
                            } else if (_emailController.text.isEmpty ||
                                _lastNameController.text.isEmpty ||
                                _mobileNoController.text.isEmpty) {
                              "please_enter_a_valid_data_to_proceed".tr.showSnackBar(context);
                            } else if (!_selectedCountryCode.contains('+')) {
                              "please_enter_a_valid_country_code_to_proceed".tr
                                  .showSnackBar(context);
                            }else if (_selectedDate == null) {
                              "Please select date of bith".showSnackBar(context);
                            }else if (_line1Controller.text.isEmpty) {
                              "Please enter address".showSnackBar(context);
                            }else if (_mothersNamedController.text.isEmpty) {
                              "please_enter_mothers_name".tr.showSnackBar(context);
                            }else if (_cityController.text.isEmpty) {
                              "please_enter_city".tr.showSnackBar(context);
                            }else if (_zipController.text.isEmpty) {
                              "please_enter_zip".tr.showSnackBar(context);
                            }else if (_selectedCountry.isEmpty) {
                              "please_select_country".tr.showSnackBar(context);
                            }else if (_selectedState.isEmpty) {
                              "please_select_state".tr.showSnackBar(context);
                            }else {
                              context.read<AddOnUserCubit>().createAddOnUser(
                                email: _emailController.text,
                                password: _passwordController.text,
                                firstName: _firstNameController.text,
                                lastName: _lastNameController.text,
                                phoneCode: _selectedCountryCode,
                                phoneNumber: _mobileNoController.text,
                                mothersName: _mothersNamedController.text,
                                line1: _line1Controller.text,
                                state: _selectedState,
                                country: _selectedCountry,
                                city: _cityController.text,
                                zip: _zipController.text,
                                dob: _selectedDate.toString().formatDate(),
                                countryCode: CountriesMap.CountriesCode.countriesCodeMap[_selectedCountry]!,
                              );
                            }

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
                                    "submit".tr,
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
                              width: MediaQuery.of(context).size.width*0.8,
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
          ))]),
        );
  }
}
