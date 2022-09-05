// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_funds_on_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoadFundsOnCardModel _$$_LoadFundsOnCardModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoadFundsOnCardModel(
      json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      json['status'] == null
          ? null
          : Data.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoadFundsOnCardModelToJson(
        _$_LoadFundsOnCardModel instance) =>
    <String, dynamic>{
      'transaction': instance.transaction,
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

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      (json['creationTimestamp'] as num?)?.toDouble(),
      json['id'] as String?,
      json['profileId'] as String?,
      json['state'] as String?,
      json['tag'] as String?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'creationTimestamp': instance.creationTimestamp,
      'id': instance.id,
      'profileId': instance.profileId,
      'state': instance.state,
      'tag': instance.tag,
    };
