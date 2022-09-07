// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardDetailsModel _$$_CardDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_CardDetailsModel(
      json['code'] as int?,
      json['status'] as String?,
      json['data'] == null
          ? null
          : UserCardDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CardDetailsModelToJson(_$_CardDetailsModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$_UserCardDetails _$$_UserCardDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserCardDetails(
      json['card_pan'] as String?,
      json['expiration'] as String?,
      json['cvv'] as String?,
      json['card_design'] as String?,
      json['is_active'] as String?,
      json['currency'] as String?,
      json['name_on_cad'] as String?,
      json['qrimage'] == null
          ? null
          : QrImage.fromJson(json['qrimage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserCardDetailsToJson(_$_UserCardDetails instance) =>
    <String, dynamic>{
      'card_pan': instance.card_pan,
      'expiration': instance.expiration,
      'cvv': instance.cvv,
      'card_design': instance.card_design,
      'is_active': instance.is_active,
      'currency': instance.currency,
      'name_on_cad': instance.name_on_cad,
      'qrimage': instance.qrimage,
    };

_$_QrImage _$$_QrImageFromJson(Map<String, dynamic> json) => _$_QrImage(
      json['url'] as String?,
      json['data'] == null
          ? null
          : ImageData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QrImageToJson(_$_QrImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'data': instance.data,
    };

_$_ImageData _$$_ImageDataFromJson(Map<String, dynamic> json) => _$_ImageData(
      json['expiration'] as String?,
      json['name_on_card'] as String?,
      json['cvv'] as String?,
      json['card_hash'] as String?,
    );

Map<String, dynamic> _$$_ImageDataToJson(_$_ImageData instance) =>
    <String, dynamic>{
      'expiration': instance.expiration,
      'name_on_card': instance.name_on_card,
      'cvv': instance.cvv,
      'card_hash': instance.card_hash,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };
