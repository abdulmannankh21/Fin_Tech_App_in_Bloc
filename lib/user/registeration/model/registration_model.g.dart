// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationModel _$$_RegistrationModelFromJson(Map<String, dynamic> json) =>
    _$_RegistrationModel(
      json['code'] as int,
      json['status'] as String,
      Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegistrationModelToJson(
        _$_RegistrationModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      (json['error'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['success'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'error': instance.error,
      'success': instance.success,
    };
