// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeTransactionModel _$$_HomeTransactionModelFromJson(
        Map<String, dynamic> json) =>
    _$_HomeTransactionModel(
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      HomeWalletBalance.fromJson(
          json['wallet_balance'] as Map<String, dynamic>),
      (json['transactions'] as List<dynamic>)
          .map((e) =>
              HomeWalletTransactionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeTransactionModelToJson(
        _$_HomeTransactionModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'wallet_balance': instance.wallet_balance,
      'transactions': instance.transactions,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };

_$_HomeWalletBalance _$$_HomeWalletBalanceFromJson(Map<String, dynamic> json) =>
    _$_HomeWalletBalance(
      json['user_id'] as int?,
      json['ewallet_id'] as String?,
      json['currency'] as String?,
      json['alias'] as String?,
      (json['balance'] as num?)?.toDouble(),
      json['received_balance'] as String?,
      json['on_hold_balance'] as String?,
      json['reserve_balance'] as String?,
      json['last_updated_at'] as String?,
    );

Map<String, dynamic> _$$_HomeWalletBalanceToJson(
        _$_HomeWalletBalance instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'ewallet_id': instance.ewallet_id,
      'currency': instance.currency,
      'alias': instance.alias,
      'balance': instance.balance,
      'received_balance': instance.received_balance,
      'on_hold_balance': instance.on_hold_balance,
      'reserve_balance': instance.reserve_balance,
      'last_updated_at': instance.last_updated_at,
    };

_$_HomeWalletTransactionDetails _$$_HomeWalletTransactionDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_HomeWalletTransactionDetails(
      json['user_id'] as int?,
      json['transaction_id'] as String?,
      json['currency'] as String?,
      json['amount'] as String?,
      json['transaction_status'] as String?,
      json['payment_status'] as String?,
      json['created_at'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$$_HomeWalletTransactionDetailsToJson(
        _$_HomeWalletTransactionDetails instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'currency': instance.currency,
      'amount': instance.amount,
      'transaction_status': instance.transaction_status,
      'payment_status': instance.payment_status,
      'created_at': instance.created_at,
      'description': instance.description,
    };
