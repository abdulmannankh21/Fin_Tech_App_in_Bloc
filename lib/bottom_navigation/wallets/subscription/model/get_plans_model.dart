


import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_plans_model.freezed.dart';
part 'get_plans_model.g.dart';

@freezed
abstract class PlanModel with _$PlanModel {
  const factory PlanModel(
      Status? status,
      List<Subscription> plans,

      ) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) =>
      _$PlanModelFromJson(json);
}

@freezed
abstract class Subscription with _$Subscription{
  const factory Subscription(

      String? id,
      String? status,
      String? plan_name,
      String? plan_type,
      String? currency,
      String? plan_price,
      String? virtual_card,
      String? bank,
      String? created_at,

      ) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}





@freezed
abstract class Status with _$Status{
  const factory Status(
      String? result,
      String? message,
      ) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);
}



