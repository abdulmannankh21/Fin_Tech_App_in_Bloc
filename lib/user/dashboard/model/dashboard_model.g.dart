// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardModel _$$_DashboardModelFromJson(Map<String, dynamic> json) =>
    _$_DashboardModel(
      (json['transactions'] as List<dynamic>?)
          ?.map((e) =>
              WalletTransactionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['wallet_balance'] == null
          ? null
          : WalletBalance.fromJson(
              json['wallet_balance'] as Map<String, dynamic>),
      (json['cryptos'] as List<dynamic>?)
          ?.map((e) => Cryptos.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['currency'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DashboardModelToJson(_$_DashboardModel instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
      'wallet_balance': instance.wallet_balance,
      'cryptos': instance.cryptos,
      'currency': instance.currency,
      'status': instance.status,
    };

_$_Cryptos _$$_CryptosFromJson(Map<String, dynamic> json) => _$_Cryptos(
      json['balance'] as String?,
      json['code'] as String?,
    );

Map<String, dynamic> _$$_CryptosToJson(_$_Cryptos instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'code': instance.code,
    };

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      json['balance'] as String?,
      json['code'] as String?,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'code': instance.code,
    };

_$_WalletBalance _$$_WalletBalanceFromJson(Map<String, dynamic> json) =>
    _$_WalletBalance(
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

Map<String, dynamic> _$$_WalletBalanceToJson(_$_WalletBalance instance) =>
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

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };

_$_WalletTransactionDetails _$$_WalletTransactionDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_WalletTransactionDetails(
      json['user_id'] as int?,
      json['transaction_id'] as String?,
      json['currency'] as String?,
      json['amount'] as String?,
      json['transaction_status'] as String?,
      json['payment_status'] as String?,
      json['created_at'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$$_WalletTransactionDetailsToJson(
        _$_WalletTransactionDetails instance) =>
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
