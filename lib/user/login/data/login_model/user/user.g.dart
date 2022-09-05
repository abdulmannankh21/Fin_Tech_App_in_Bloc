// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['name'] as String?,
      json['email'] as String?,
      json['ewallet_id'] as String?,
      json['ids'] as int,
      json['phone_number'] as String?,
      json['card_id'] as String?,
      json['type'] as String?,
      json['entity_type'] as String?,
      json['merchant_logo'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'ewallet_id': instance.ewalletId,
      'ids': instance.ids,
      'phone_number': instance.phoneNumber,
      'card_id': instance.cardId,
      'type': instance.type,
      'entity_type': instance.entityType,
      'merchant_logo': instance.merchant_logo,
    };
