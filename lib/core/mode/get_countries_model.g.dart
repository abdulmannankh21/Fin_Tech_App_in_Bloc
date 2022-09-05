// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_countries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCountriesModel _$$_GetCountriesModelFromJson(Map<String, dynamic> json) =>
    _$_GetCountriesModel(
      json['iso_alpha2'] as String?,
      json['iso_alpha3'] as String?,
      json['country_name'] as String?,
    );

Map<String, dynamic> _$$_GetCountriesModelToJson(
        _$_GetCountriesModel instance) =>
    <String, dynamic>{
      'iso_alpha2': instance.isoAlpha2,
      'iso_alpha3': instance.isoAlpha3,
      'country_name': instance.countryName,
    };
