// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_currency_symbol_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCurrencySymbolModel _$$_GetCurrencySymbolModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetCurrencySymbolModel(
      json['id'] as String?,
      json['name'] as String?,
      json['isoAlpha2'] as String?,
      json['isoAlpha3'] as String?,
      json['currencyCode'] as String?,
      json['currencyName'] as String?,
      json['currencySign'] as String?,
      json['phoneCode'] as String?,
    );

Map<String, dynamic> _$$_GetCurrencySymbolModelToJson(
        _$_GetCurrencySymbolModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isoAlpha2': instance.isoAlpha2,
      'isoAlpha3': instance.isoAlpha3,
      'currencyCode': instance.currencyCode,
      'currencyName': instance.currencyName,
      'currencySign': instance.currencySign,
      'phoneCode': instance.phoneCode,
    };
