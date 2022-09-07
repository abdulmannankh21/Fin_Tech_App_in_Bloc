import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/deposit/cubit/deposit_cubit.dart';
import 'package:flutter_app/bottom_navigation/deposit/deposit_webview.dart';
import 'package:flutter_app/bottom_navigation/deposit/model/deposit_method_model.dart';
import 'package:flutter_app/src/constant/constant_data.dart';

import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';

import 'package:get/get.dart';


class DepositScreen extends StatefulWidget {

  const DepositScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DepositScreen> createState() => _DepositState();
}

class _DepositState extends State<DepositScreen> {
  final TextEditingController _amountController = TextEditingController();
  int _selectedMethodCode = 0 ;
  String _selectedCurrency ='';
  MethodDetails? method;


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DepositCubit>().getMethods();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<DepositCubit, DepositState>(
        listener: (context, state) {
          if (state is DepositErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error Occurred")));
          } else if (state is DepositInsertSuccesstate) {
              if(state.model['code'] == 200) {
                print(state.model['data']['url']);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) =>
                      DepositWebview(url: state.model['data']['url']),));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error Occurred")));
              }
          }
        },
        builder: (context, state) {
          if (state is DepositLoadingState) {
            return const LoadingScreen();
          } else if (state is DepositSuccesstate){
            List<MethodDetails> list = state.model.data!.methods as List<MethodDetails> ;
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
                                "add_funds".tr,
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
                  Container(
                    margin: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButtonFormField<MethodDetails>(
                      isExpanded: true,
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(),


                      ),
                      items:
                      list.map<DropdownMenuItem<MethodDetails>>((MethodDetails value) {
                        return DropdownMenuItem<MethodDetails>(
                          value: value,
                          child: Text(
                            "${value.name}",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: _theme.colorScheme.onSecondary,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (MethodDetails? newValue) {
                        setState(() {
                          _selectedMethodCode = newValue!.method_code!;
                          _selectedCurrency = newValue!.currency!;
                          method = newValue;

                          print(_selectedCurrency + _selectedMethodCode.toString());
                        });
                      },
                      hint: Text(
                        "Select Method",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: _theme.colorScheme.onSecondary,
                        ),
                      ),
                      iconEnabledColor: _theme.colorScheme.onSecondary,
                      iconDisabledColor: _theme.colorScheme.onSecondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Column(
                      children: [
                        SizedBox(height: _size.height * 0.02),
                        NewTextField(controller:_amountController,labelText: "Amount in USD",keyboardType: TextInputType.number,),
                        SizedBox(height: _size.height * 0.04),
                      ],
                    ),
                  ),
                  method != null ? Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1 USD = " + method!.rate! + " " + method!.currency!),
                        SizedBox(height: _size.height * 0.01),
                        Text("Min Amount: "+ method!.min_amount! ),
                        SizedBox(height: _size.height * 0.01),
                        Text("Max Amount: "+ method!.max_amount! ),
                      ],
                    ),
                  ):Container(),
                  SizedBox(height: _size.height * 0.05),
                  Container(
                    margin: EdgeInsets.only(left: _size.width*0.1,right: _size.width*0.1),

                    child: GestureDetector(
                        onTap: () {
                          if(_amountController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter the Amount")));
                          }else if(method == null){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please select the method")));
                          }else{
                            double amount = double.parse(_amountController.text) * double.parse(method!.rate!);
                            print(amount.toString());
                          context.read<DepositCubit>().depositFund(
                            amount.toString(),method!.method_code!,method!.currency!
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
                                  "add_funds".tr,
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
                ],
              ),
            );
          }else if(state is DepositInsertSuccesstate){
            return const LoadingScreen();
          }else{
            return Container(
              child: Center(
                child: Text('Error Occurred, Try Again'),
              ),
            );
          }
        },
      ),
    );
  }
}
