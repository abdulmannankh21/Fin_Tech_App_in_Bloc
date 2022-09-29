import 'package:flutter/material.dart';
import 'package:flutter_app/core/mode/get_countries_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../core/repository/general_data_queries_repo.dart';
import '../../../custom_app_bar.dart';
import '../../../src/pages/loading_screen/loading_screen.dart';
import '../cubit/airtime_cubit.dart';
import '../model/countries_model/airtime_countries_model.dart';
import 'airtime_recharge.dart';


class AirtimeSelectCountry extends StatefulWidget {
  const AirtimeSelectCountry({Key? key}) : super(key: key);

  @override
  _AirtimeSelectCountryState createState() => _AirtimeSelectCountryState();
}

class _AirtimeSelectCountryState extends State<AirtimeSelectCountry> {
  List<CountriesModel>? countries = [];
  String countryIso = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getCountries();
    });
  }

  Future<void> _getCountries() async {
    if (countries!.isNotEmpty) {
      countries!.clear();
    }
    final countriesModel =
        await GetIt.I<GeneralDataQueriesRepo>().getAirtimeCountries();
    countries = countriesModel.data;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(14),
            child: Column(children: [
              Container(
                  width: _size.width,
                  height: _size.height * 0.2,
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.only(top: 14),
                      padding: const EdgeInsets.all(14),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: DropdownButtonFormField<CountriesModel>(
                        isExpanded: true,
                        dropdownColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(),
                        ),
                        items: countries!.map<DropdownMenuItem<CountriesModel>>(
                            (CountriesModel value) {
                          return DropdownMenuItem<CountriesModel>(
                            value: value,
                            child: Text(
                              value.name.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: _theme.colorScheme.onSecondary,
                                  ),
                            ),
                          );
                        }).toList(),
                        onChanged: (CountriesModel? newValue) {
                          setState(() {
                            countryIso = newValue!.iso_alpha2!;
                          });

                          context
                              .read<AirtimeCubit>()
                              .getOperatorDetails(newValue!.iso_alpha2!);
                        },
                        hint: Text(
                          "Select Country",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: _theme.colorScheme.onSecondary,
                                  ),
                        ),
                        iconEnabledColor: _theme.colorScheme.onSecondary,
                        iconDisabledColor: _theme.colorScheme.onSecondary,
                      ),
                    ),
                  )),
              SizedBox(height: 4),
              Container(child: Card(child:
                  BlocBuilder<AirtimeCubit, AirtimeState>(
                      builder: (context, state) {
                if (state is AirtimeLoadingState) {
                  return Container(
                      padding: EdgeInsets.all(14), child: LoadingScreen());
                } else if (state is AirtimeSuccesstate) {
                  return Container(
                      height: _size.height * 0.48,
                      child: GridView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1.4,
                          ),
                          itemCount: state.model.data.response.length,
                          itemBuilder: (BuildContext ctx, index) {
                            final operators = state.model.data.response;
                            return Container(
                                padding: EdgeInsets.all(14),
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AirtimeRecharge(
                                                      operatorId:
                                                          operators[index]
                                                              .operatorId,
                                                      countryIso: countryIso)));
                                    },
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                              operators[index].logoUrls[0],
                                              height: 50),
                                          SizedBox(height: 5),
                                          Text(
                                            operators[index].name!,
                                            textAlign: TextAlign.center,
                                            softWrap: true,
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ])));
                          }));
                } else if (state is AirtimeErrorState) {
                  return Container(
                      height: _size.height * 0.05,
                      child: Center(
                        child: Text(
                          state.errorMessage,
                          style: TextStyle(fontSize: 14),
                        ),
                      ));
                } else {
                  return Container();
                }
              }))),
            ])));
  }
}
