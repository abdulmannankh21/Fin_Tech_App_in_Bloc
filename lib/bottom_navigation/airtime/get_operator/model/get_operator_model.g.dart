// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_operator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperatorModel _$$_OperatorModelFromJson(Map<String, dynamic> json) =>
    _$_OperatorModel(
      json['status'] as String?,
      json['message'] as String?,
      json['code'] as int?,
      OperatorData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OperatorModelToJson(_$_OperatorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$_OperatorData _$$_OperatorDataFromJson(Map<String, dynamic> json) =>
    _$_OperatorData(
      Response.fromJson(json['response'] as Map<String, dynamic>),
      json['country'] as String?,
    );

Map<String, dynamic> _$$_OperatorDataToJson(_$_OperatorData instance) =>
    <String, dynamic>{
      'response': instance.response,
      'country': instance.country,
    };
