// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_plans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanModel _$$_PlanModelFromJson(Map<String, dynamic> json) => _$_PlanModel(
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      (json['plans'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlanModelToJson(_$_PlanModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'plans': instance.plans,
    };

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      json['id'] as String?,
      json['status'] as String?,
      json['plan_name'] as String?,
      json['plan_type'] as String?,
      json['currency'] as String?,
      json['plan_price'] as String?,
      json['virtual_card'] as String?,
      json['bank'] as String?,
      json['created_at'] as String?,
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'plan_name': instance.plan_name,
      'plan_type': instance.plan_type,
      'currency': instance.currency,
      'plan_price': instance.plan_price,
      'virtual_card': instance.virtual_card,
      'bank': instance.bank,
      'created_at': instance.created_at,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };
