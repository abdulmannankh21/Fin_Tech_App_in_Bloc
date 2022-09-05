import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/transaction_error.dart';
import 'package:flutter_app/bottom_navigation/transaction_success.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/widget/new_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/bottom_navigation/cards/create_addon_cards/cubit/issue_card_cubit.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/src/Language/app_localization.dart';
import 'package:flutter_app/src/pages/loading_screen/loading_screen.dart';
import 'package:flutter_app/src/widget/commontxtfield.dart';
import 'package:flutter_app/src/widget/primary_button.dart';
import 'package:get/get.dart';


class IssueCardBuilder extends StatefulWidget {
  const IssueCardBuilder({Key? key}) : super(key: key);

  @override
  State<IssueCardBuilder> createState() => _IssueCardBuilderState();
}

class _IssueCardBuilderState extends State<IssueCardBuilder> {
  List<String> _currency = [
    "EUR",
    "USD",
    "GBP",
  ];

  String _selectCurrency = '';

  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<IssuecardCubit, IssuecardState>(
        listener: (context, state) {
          if (state is IssuecardErrorState) {
            if(state.errorMessage == Constant.tokenExpired){
              Navigator.pushNamedAndRemoveUntil(context,ScreenNames.login,(route) => false,);
            }else{
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionError(message: state.errorMessage)));
            }
          }else if (state is IssuecardSuccesstate) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TransactionSuccess(message: state.model.status!.message!)));
          }
        },
        builder: (context, state) {
          if (state is IssuecardLoadingState) {
            return const LoadingScreen();
          }  else {
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
                                    "Create AddOn \nCard",
                                    style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: DropdownButtonFormField<String>(
                                      isExpanded: true,
                                      dropdownColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                      decoration:const InputDecoration(
                                          enabledBorder: UnderlineInputBorder()
                                      ),
                                      items: _currency
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: InfiniteText(
                                            value,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(
                                              color: _theme.colorScheme.onSecondary,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {

                                          _selectCurrency = newValue!;

                                        });
                                      },
                                      hint: Text(
                                        "currency".tr,
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          color: _theme.colorScheme.onSecondary,
                                        ),
                                      ),
                                      iconEnabledColor: _theme.colorScheme.onSecondary,
                                      iconDisabledColor: _theme.colorScheme.onSecondary,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  NewTextField(controller:_amountController,labelText: "name_on_card".tr),
                                  const SizedBox(height: 45),
                                  Container(
                                    margin: EdgeInsets.only(left: _size.width*0.05,right: _size.width*0.05),

                                    child: GestureDetector(
                                        onTap: () {
                                          context.read<IssuecardCubit>().issueCard(
                                            _amountController.text,
                                            _selectCurrency,
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
                                                  "create_add_on_card".tr,
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
                          ),
                    ]
                ));
          }
        },
      ),
    );
  }
}
