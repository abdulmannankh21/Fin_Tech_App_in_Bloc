// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepositMethodModel _$$_DepositMethodModelFromJson(
        Map<String, dynamic> json) =>
    _$_DepositMethodModel(
      json['code'] as int?,
      json['status'] as String?,
      json['data'] == null
          ? null
          : MethodData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DepositMethodModelToJson(
        _$_DepositMethodModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$_MethodData _$$_MethodDataFromJson(Map<String, dynamic> json) =>
    _$_MethodData(
      (json['methods'] as List<dynamic>)
          .map((e) => MethodDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['image_path'] as String?,
    );

Map<String, dynamic> _$$_MethodDataToJson(_$_MethodData instance) =>
    <String, dynamic>{
      'methods': instance.methods,
      'image_path': instance.image_path,
    };

_$_MethodDetails _$$_MethodDetailsFromJson(Map<String, dynamic> json) =>
    _$_MethodDetails(
      json['currency'] as String?,
      json['name'] as String?,
      json['symbol'] as String?,
      json['method_code'] as int?,
      json['gateway_alias'] as String?,
      json['min_amount'] as String?,
      json['max_amount'] as String?,
      json['percent_charge'] as String?,
      json['fixed_charge'] as String?,
      json['rate'] as String?,
    );

Map<String, dynamic> _$$_MethodDetailsToJson(_$_MethodDetails instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'name': instance.name,
      'symbol': instance.symbol,
      'method_code': instance.method_code,
      'gateway_alias': instance.gateway_alias,
      'min_amount': instance.min_amount,
      'max_amount': instance.max_amount,
      'percent_charge': instance.percent_charge,
      'fixed_charge': instance.fixed_charge,
      'rate': instance.rate,
    };
