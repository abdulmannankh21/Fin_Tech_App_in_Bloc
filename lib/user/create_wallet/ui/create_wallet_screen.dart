import 'package:flutter/material.dart';
import 'package:flutter_app/core/mode/get_countries_model.dart';
import 'package:flutter_app/core/mode/get_state_codes_model.dart';
import 'package:flutter_app/src/constant/countries_code_map.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/user/registeration/enums/countries.dart';
import 'package:flutter_app/user/registeration/enums/occupation.dart';
import 'package:flutter_app/user/registeration/enums/source_funds_personal.dart';
import 'package:flutter_app/user/registeration/transaction_webview/ui/transaction_webview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/widget/xenio_primary_button.dart';
import 'package:flutter_app/src/widget/xenio_text_field.dart';
import 'package:flutter_app/user/create_wallet/cubit/create_wallet_cubit.dart';
import 'package:flutter_app/user/registeration/reg_argument_model.dart';
import 'package:flutter_app/core/repository/general_data_queries_repo.dart';

import '../../../core/app_configs/screen_names.dart';
import '../../../core/utils/commen_extensions.dart';

import '../../../src/pages/loading_screen/loading_screen.dart';

class CreateWalletScreen extends StatefulWidget {
  final RegisterArgumentModel registerArgumentModel;
  const CreateWalletScreen({
    Key? key,
    required this.registerArgumentModel,
  }) : super(key: key);

  @override
  _CreateWalletScreenState createState() => _CreateWalletScreenState();
}

class _CreateWalletScreenState extends State<CreateWalletScreen> {
  final TextEditingController _mothersNamedController = TextEditingController();
  final TextEditingController _line1Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryCodeController = TextEditingController();

  final TextEditingController _zipController = TextEditingController();
  final TextEditingController _companyName = TextEditingController();

  List<GetStateCodesModel> statesModel = [];
  List<String> statesName = [];
  String _selectedCountry = '';
  String _selectedState = '';

  String _selectedSourceOfFunds = '';
  String _selectedOccupation = '';

  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
    // //  _getCountry();
    // });
  }

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

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        backgroundColor:Colors.white,
        body: BlocConsumer<CreateWalletCubit, CreateWalletState>(
          listener: (context, state) {
            if (state is WalletCreatedSuccessfully) {
              String? token = state.model.data?.loginToken;
              String? email = state.model.data?.userDataInsert?.email;
              print(email!+token.toString());
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => WebViewContainer(email: email,token: token,actionType: "registration",)));

            } else if (state is WalletCreatedError) {
              state.errorMessage.showSnackBar(context);
            }
          },
          builder: (context, state) {
            if (state is WalletCreatedLoading) {
              return LoadingScreen(loadingText: state.loadingMessage);
            } else {
              return _createWalletScreen(_size, _theme);
            }
          },
        ));
  }

  String changeValue(String value){
    List<String> values = value.split("_");
    String newValue = "";
    for(String value in values){
      newValue = newValue + " " + value;
    }
    return newValue;
  }


  Widget _createWalletScreen(Size _size, ThemeData _theme) {
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
                              "create_wallet".tr,
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

                            child: DropdownButtonFormField<Occupation>(
                              isExpanded: true,
                              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(),
                              ),
                              items:
                              Occupation.values.map<DropdownMenuItem<Occupation>>((Occupation value) {
                                return DropdownMenuItem<Occupation>(
                                  value: value,
                                  child: Text(
                                    changeValue(value.name.toString()),
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: _theme.colorScheme.onSecondary,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (Occupation? newValue) {
                                setState(() {
                                  _selectedOccupation = newValue.toString();
                                });
                              },
                              hint: Text(
                                "select_occupation".tr,
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: _theme.colorScheme.onSecondary,
                                ),
                              ),
                              iconEnabledColor: _theme.colorScheme.onSecondary,
                              iconDisabledColor: _theme.colorScheme.onSecondary,
                            ),
                          ),
                          SizedBox(height: _size.height * 0.04),
                          Container(
                            width: MediaQuery.of(context).size.width,

                            child: DropdownButtonFormField<PersonalSourceFunds>(
                              isExpanded: true,
                              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(),


                              ),
                              items:
                              PersonalSourceFunds.values.map<DropdownMenuItem<PersonalSourceFunds>>((PersonalSourceFunds value) {
                                return DropdownMenuItem<PersonalSourceFunds>(
                                  value: value,
                                  child: Text(
                                    changeValue(value.name.toString()),
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: _theme.colorScheme.onSecondary,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (PersonalSourceFunds? newValue) {
                                setState(() {
                                  _selectedSourceOfFunds = newValue.toString();
                                });
                              },
                              hint: Text(
                                "select_source_of_funds".tr,
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: _theme.colorScheme.onSecondary,
                                ),
                              ),
                              iconEnabledColor: _theme.colorScheme.onSecondary,
                              iconDisabledColor: _theme.colorScheme.onSecondary,
                            ),
                          ),
                          SizedBox(height: _size.height * 0.04),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: DropdownButtonFormField<Countries>(
                              isExpanded: true,
                              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(),
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
                                  _getStates(CountriesCode.countriesCodeMap[_selectedCountry]!);
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
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(),
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
                          SizedBox(height: _size.height * 0.03),
                          Container(
                            margin: EdgeInsets.only(left: 25,right: 25),

                            child: GestureDetector(
                                onTap: () {
                                  if (_selectedDate == null) {
                                    "please_select_date_of_birth".tr.showSnackBar(context);
                                  }else if (_line1Controller.text.isEmpty) {
                                    "please_enter_address".tr.showSnackBar(context);
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
                                  }else if (_selectedSourceOfFunds.isEmpty) {
                                    "please_select_source_Of_fund".tr.showSnackBar(context);
                                  }else if (_selectedOccupation.isEmpty) {
                                    "please_select_occupation".tr.showSnackBar(context);
                                  }else {
                                    context.read<CreateWalletCubit>().createWallet(
                                      email: widget.registerArgumentModel.emailController,
                                      password: widget.registerArgumentModel.passwordController,
                                      firstName:
                                      widget.registerArgumentModel.firstNameController,
                                      lastName: widget.registerArgumentModel.lastNameController,
                                      phoneCode: widget.registerArgumentModel.mobileCodeController,
                                      phoneNumber:
                                      widget.registerArgumentModel.mobileNoController,
                                      type: widget.registerArgumentModel.type,
                                      mothersName: _mothersNamedController.text,
                                      line1: _line1Controller.text,
                                      state: _selectedState,
                                      country: _selectedCountry,
                                      city: _cityController.text,
                                      zip: _zipController.text,
                                      dob: _selectedDate.toString().formatDate(),
                                      countryCode: CountriesCode
                                          .countriesCodeMap[_selectedCountry]!,
                                      occupation: _selectedOccupation.split(".")[1],
                                      sourceOfFunds: _selectedSourceOfFunds.split(".")[1],
                                      sourceOfFundsOther: "",
                                      acceptedTerms: true,
                                    );
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
                                          "proceed".tr,
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
                          SizedBox(height: _size.height * 0.03),
                        ],
                      )),
                ])));
  }
}
