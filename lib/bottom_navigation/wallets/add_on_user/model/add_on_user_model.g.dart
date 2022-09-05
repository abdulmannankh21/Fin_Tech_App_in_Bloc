// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_on_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddOnUserModel _$$_AddOnUserModelFromJson(Map<String, dynamic> json) =>
    _$_AddOnUserModel(
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddOnUserModelToJson(_$_AddOnUserModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'users': instance.users,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['id'] as String?,
      json['user_id'] as String?,
      json['ewallet_id'] as String?,
      json['email'] as String?,
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['accountid'] as String?,
      json['cardid'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'ewallet_id': instance.ewallet_id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'accountid': instance.accountid,
      'cardid': instance.cardid,
      'image': instance.image,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };
