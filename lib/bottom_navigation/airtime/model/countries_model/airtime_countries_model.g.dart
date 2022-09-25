// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airtime_countries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AirtimeCountries _$$_AirtimeCountriesFromJson(Map<String, dynamic> json) =>
    _$_AirtimeCountries(
      json['code'] as int,
      json['result'] as String,
      (json['data'] as List<dynamic>?)
          ?.map((e) => CountriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AirtimeCountriesToJson(_$_AirtimeCountries instance) =>
    <String, dynamic>{
      'code': instance.code,
      'result': instance.result,
      'data': instance.data,
    };

_$_CountriesModel _$$_CountriesModelFromJson(Map<String, dynamic> json) =>
    _$_CountriesModel(
      json['iso_alpha2'] as String?,
      json['iso_alpha3'] as String?,
      json['currency_code'] as String?,
      json['id'] as int,
      json['name'] as String,
      json['currency_name'] as String,
      json['currency_sign'] as String,
      json['phone_code'] as String,
    );

Map<String, dynamic> _$$_CountriesModelToJson(_$_CountriesModel instance) =>
    <String, dynamic>{
      'iso_alpha2': instance.iso_alpha2,
      'iso_alpha3': instance.iso_alpha3,
      'currency_code': instance.currency_code,
      'id': instance.id,
      'name': instance.name,
      'currency_name': instance.currency_name,
      'currency_sign': instance.currency_sign,
      'phone_code': instance.phone_code,
    };
