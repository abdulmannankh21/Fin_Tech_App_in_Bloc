// To parse this JSON data, do
//
//     final dashboardModel = dashboardModelFromJson(jsonString);

// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:flutter_app/user/dashboard/model/transaction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel(
      @JsonKey(name: 'transactions') List<WalletTransactionDetails>? transactions,
      @JsonKey(name: 'wallet_balance') WalletBalance? wallet_balance,
      @JsonKey(name: 'cryptos') List<Cryptos>? cryptos,
      @JsonKey(name: 'currency') List<Currency>? currency,
      @JsonKey(name: 'status') Status? status,
      ) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}

@freezed
abstract class Cryptos with _$Cryptos {
  const factory Cryptos(
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code,

      ) = _Cryptos;

  factory Cryptos.fromJson(Map<String, dynamic> json) =>
      _$CryptosFromJson(json);
}

@freezed
abstract class Currency with _$Currency {
  const factory Currency(
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code,

      ) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}



@freezed
abstract class WalletBalance with _$WalletBalance {
  const factory WalletBalance(

      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'ewallet_id') String? ewallet_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'balance') double? balance,
      @JsonKey(name: 'received_balance') String? received_balance,
      @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
      @JsonKey(name: 'reserve_balance') String? reserve_balance,
      @JsonKey(name: 'last_updated_at') String? last_updated_at,


      ) = _WalletBalance;

  factory WalletBalance.fromJson(Map<String, dynamic> json) =>
      _$WalletBalanceFromJson(json);
}

@freezed
abstract class Status with _$Status {
  const factory Status(
      @JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      ) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);
}



@freezed
abstract class WalletTransactionDetails with _$WalletTransactionDetails {
  const factory WalletTransactionDetails(

      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'transaction_id') String? transaction_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'transaction_status') String? transaction_status,
      @JsonKey(name: 'payment_status') String? payment_status,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'description') String? description,

      ) = _WalletTransactionDetails;

  factory WalletTransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$WalletTransactionDetailsFromJson(json);
}


