// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      json['status'] as String?,
      json['code'] as int?,
      json['message'] as String?,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['last_inserted_user_id'] as int?,
      json['user_data_insert'] == null
          ? null
          : UserDataInsert.fromJson(
              json['user_data_insert'] as Map<String, dynamic>),
      json['token'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'last_inserted_user_id': instance.lastInsertedUserId,
      'user_data_insert': instance.userDataInsert,
      'token': instance.token,
    };

_$_UserDataInsert _$$_UserDataInsertFromJson(Map<String, dynamic> json) =>
    _$_UserDataInsert(
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['email'] as String?,
      json['phone_number'] as String?,
      json['password'] as String?,
      json['type'] as String?,
      json['entity_type'] as String?,
      json['is_email_verified'] as String?,
    );

Map<String, dynamic> _$$_UserDataInsertToJson(_$_UserDataInsert instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'type': instance.type,
      'entity_type': instance.entityType,
      'is_email_verified': instance.isEmailVerified,
    };
