// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_change_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileImageChangeModel _$$_ProfileImageChangeModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileImageChangeModel(
      json['code'] as int?,
      json['status'] as String?,
      json['merchant_logo'] as String?,
    );

Map<String, dynamic> _$$_ProfileImageChangeModelToJson(
        _$_ProfileImageChangeModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'merchant_logo': instance.merchant_logo,
    };

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      (json['error'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
