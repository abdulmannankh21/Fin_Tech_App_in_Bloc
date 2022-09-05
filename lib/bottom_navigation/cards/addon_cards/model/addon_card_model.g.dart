// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddonCardModel _$$_AddonCardModelFromJson(Map<String, dynamic> json) =>
    _$_AddonCardModel(
      (json['addon_cards'] as List<dynamic>)
          .map((e) => AddonCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] == null
          ? null
          : Data.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddonCardModelToJson(_$_AddonCardModel instance) =>
    <String, dynamic>{
      'addon_cards': instance.addon_cards,
      'status': instance.status,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };

_$_AddonCard _$$_AddonCardFromJson(Map<String, dynamic> json) => _$_AddonCard(
      json['id'] as String?,
      json['user_id'] as String?,
      json['email_id'] as String?,
      json['ewallet_id'] as String?,
      json['card_id'] as String?,
      json['currency'] as String?,
      json['nameoncard'] as String?,
    );

Map<String, dynamic> _$$_AddonCardToJson(_$_AddonCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'email_id': instance.email_id,
      'ewallet_id': instance.ewallet_id,
      'card_id': instance.card_id,
      'currency': instance.currency,
      'nameoncard': instance.nameoncard,
    };
