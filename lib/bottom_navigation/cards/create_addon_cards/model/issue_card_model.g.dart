// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueCardModel _$$_IssueCardModelFromJson(Map<String, dynamic> json) =>
    _$_IssueCardModel(
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      json['currency'] as String?,
      json['cardid'] as String?,
    );

Map<String, dynamic> _$$_IssueCardModelToJson(_$_IssueCardModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'currency': instance.currency,
      'cardid': instance.cardid,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };
