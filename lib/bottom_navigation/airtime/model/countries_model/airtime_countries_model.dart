import 'package:freezed_annotation/freezed_annotation.dart';

part 'airtime_countries_model.freezed.dart';
part 'airtime_countries_model.g.dart';

@freezed
abstract class AirtimeCountries with _$AirtimeCountries {
  const factory AirtimeCountries(
      int code,
      String result,
      List<CountriesModel>? data,
      ) = _AirtimeCountries;

  factory AirtimeCountries.fromJson(Map<String, dynamic> json) =>
      _$AirtimeCountriesFromJson(json);
}

@freezed
abstract class CountriesModel with _$CountriesModel {
  const factory CountriesModel(
      @JsonKey(name: 'iso_alpha2') String? iso_alpha2,
      @JsonKey(name: 'iso_alpha3') String? iso_alpha3,
      @JsonKey(name: 'currency_code') String? currency_code,
      int id,
      String name,
      String currency_name,
      String currency_sign,
      String phone_code,

      ) = _CountriesModel;

  factory CountriesModel.fromJson(Map<String, dynamic> json) =>
      _$CountriesModelFromJson(json);
}

