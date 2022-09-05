// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDetails _$$_WalletDetailsFromJson(Map<String, dynamic> json) =>
    _$_WalletDetails(
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['balance'] as List<dynamic>)
          .map((e) => Balance.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['subscription'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WalletDetailsToJson(_$_WalletDetails instance) =>
    <String, dynamic>{
      'status': instance.status,
      'transactions': instance.transactions,
      'balance': instance.balance,
      'subscription': instance.subscription,
    };

_$_Balance _$$_BalanceFromJson(Map<String, dynamic> json) => _$_Balance(
      json['alias'] as String?,
      json['user_id'] as String?,
      json['ewallet_id'] as String?,
      json['balance'] as String?,
      json['on_hold_balance'] as String?,
      json['received_balance'] as String?,
      json['reserve_balance'] as String?,
      json['currency'] as String?,
      json['last_updated_at'] as String?,
    );

Map<String, dynamic> _$$_BalanceToJson(_$_Balance instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'user_id': instance.user_id,
      'ewallet_id': instance.ewallet_id,
      'balance': instance.balance,
      'on_hold_balance': instance.on_hold_balance,
      'received_balance': instance.received_balance,
      'reserve_balance': instance.reserve_balance,
      'currency': instance.currency,
      'last_updated_at': instance.last_updated_at,
    };

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      json['email_id'] as String?,
      json['user_id'] as String?,
      json['ewallet_id'] as String?,
      json['id'] as String?,
      json['plan_id'] as String?,
      json['plan_name'] as String?,
      json['plan_type'] as String?,
      json['plan_currency'] as String?,
      json['plan_price'] as String?,
      json['start_date'] as String?,
      json['end_date'] as String?,
      json['transaction_id'] as String?,
      json['coupon'] as String?,
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'email_id': instance.email_id,
      'user_id': instance.user_id,
      'ewallet_id': instance.ewallet_id,
      'id': instance.id,
      'plan_id': instance.plan_id,
      'plan_name': instance.plan_name,
      'plan_type': instance.plan_type,
      'plan_currency': instance.plan_currency,
      'plan_price': instance.plan_price,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'transaction_id': instance.transaction_id,
      'coupon': instance.coupon,
    };

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      json['transaction_id'] as String?,
      json['user_id'] as String?,
      json['transaction_status'] as String?,
      json['amount'] as String?,
      json['payment_status'] as String?,
      json['created_at'] as String?,
      json['description'] as String?,
      json['currency'] as String?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'transaction_id': instance.transaction_id,
      'user_id': instance.user_id,
      'transaction_status': instance.transaction_status,
      'amount': instance.amount,
      'payment_status': instance.payment_status,
      'created_at': instance.created_at,
      'description': instance.description,
      'currency': instance.currency,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };
