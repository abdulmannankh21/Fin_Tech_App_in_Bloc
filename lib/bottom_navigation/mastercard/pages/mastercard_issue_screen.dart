import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/mastercard/cubit/mastercard_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/issue_card/cubit/issuecard_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/load_funds/cubit/mastercard_load_funds_cubit.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/constant/constant.dart';

import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_app/user/registeration/countries_code_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/cubit/load_funds_on_card_cubit.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';

import 'package:get/get.dart';


class MasterCardIssueScreen extends StatefulWidget {

  final fees;
  const MasterCardIssueScreen({Key? key,required this.fees}) : super(key: key);

  @override
  State<MasterCardIssueScreen> createState() => _MasterCardIssueScreenState();
}

class _MasterCardIssueScreenState extends State<MasterCardIssueScreen> {
  final TextEditingController _line1Controller = TextEditingController();
  final TextEditingController _line2Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _zipController = TextEditingController();
  String _selectedCountryCode ='';
  late BuildContext myContext;
  List<CountriesCode> list =[];
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
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<MasterCardIssueCubit, MasterCardIssueState>(
        listener: (context, state) {
          if (state is MasterCardIssueSuccessState) {
            if (state.model.code == 200) {
              state.model.message.showSnackBar(context);
              Navigator.of(context).pushNamedAndRemoveUntil(
                ScreenNames.bottomNavigationHome,
                    (Route<dynamic> route) => false,
              );
            } else {
              state.model.message.showSnackBar(context);
              Navigator.of(context).pushNamedAndRemoveUntil(
                ScreenNames.bottomNavigationHome,
                    (Route<dynamic> route) => false,
              );
            }
          } else if (state is MasterCardIssueErrorState) {
            "Error Occurred ".showSnackBar(context);
          }
        },
        builder: (context, state) {
          if (state is MasterCardIssueLoadingState) {
            return const LoadingScreen();
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack (
                    children: [
                      Image.asset('assets/new_image_signin.jpg'),
                      Container(
                          margin: EdgeInsets.only(top: 35),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 35, left: 20),
                          child: Row(

                            children: [
                              GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(Icons.arrow_back,color: Colors.white,)),
                              SizedBox(width: 40,),
                              Text(
                                "Issue Card",
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Column(
                      children: [
                        SizedBox(height: _size.height * 0.04),
                        NewTextField(controller:_line1Controller,labelText: "Address Line 1",keyboardType: TextInputType.text,),
                        SizedBox(height: _size.height * 0.04),
                        NewTextField(controller:_line2Controller,labelText: "Address Line 2",keyboardType: TextInputType.text,),
                        SizedBox(height: _size.height * 0.04),
                        NewTextField(controller:_cityController,labelText: "City",keyboardType: TextInputType.text,),
                        SizedBox(height: _size.height * 0.04),
                        NewTextField(controller:_stateController,labelText: "State",keyboardType: TextInputType.text,),
                        SizedBox(height: _size.height * 0.04),
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
                                  "${value.name}",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: _theme.colorScheme.onSecondary,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (CountriesCode? newValue) {
                              setState(() {
                                _selectedCountryCode = newValue!.code!;
                                print(_selectedCountryCode);
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
                        NewTextField(controller:_zipController,labelText: "Zip Code",keyboardType: TextInputType.number,),
                        SizedBox(height: _size.height * 0.04),
                        Text("Note: The master card issue fee is ${double.parse(widget.fees)}",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        ),),
                        SizedBox(height: _size.height * 0.04),
                      ],
                    ),
                  ),


                  SizedBox(height: _size.height * 0.05),
                  Container(
                    margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

                    child: GestureDetector(
                        onTap: () {
                          if(_zipController.text.isEmpty){
                            'Please Enter zip code'.showSnackBar(context);
                          }else if(_line1Controller.text.isEmpty){
                            'Please Enter Address Line 1'.showSnackBar(context);
                          }else if(_cityController.text.isEmpty){
                            'Please Enter city'.showSnackBar(context);
                          }else if(_stateController.text.isEmpty){
                            'Please Enter state'.showSnackBar(context);
                          }else if(_selectedCountryCode == ''){
                            'Please select country'.showSnackBar(context);
                          }else{
                            context.read<MasterCardIssueCubit>().issueCard(
                                addressLine1: _line1Controller.text,
                                addressLine2: _line2Controller.text,
                                city: _cityController.text,
                                state: _stateController.text,
                                country: _selectedCountryCode,
                                zipCode: _zipController.text
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
                                  "Issue Card",
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
                  SizedBox(height: _size.height*0.1,)
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
