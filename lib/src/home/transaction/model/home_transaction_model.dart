// To parse this JSON data, do
//
//     final cardTransactionModel = cardTransactionModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_transaction_model.freezed.dart';
part 'home_transaction_model.g.dart';

@freezed
abstract class HomeTransactionModel with _$HomeTransactionModel {
  const factory HomeTransactionModel(
      @JsonKey(name: 'status')Status? status,
      @JsonKey(name: 'wallet_balance')HomeWalletBalance wallet_balance,
      @JsonKey(name: 'transactions') List<HomeWalletTransactionDetails> transactions,
  ) = _HomeTransactionModel;

  factory HomeTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$HomeTransactionModelFromJson(json);
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
@freezed
abstract class HomeWalletBalance with _$HomeWalletBalance {
  const factory HomeWalletBalance(

      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'ewallet_id') String? ewallet_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'balance') double? balance,
      @JsonKey(name: 'received_balance') String? received_balance,
      @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
      @JsonKey(name: 'reserve_balance') String? reserve_balance,
      @JsonKey(name: 'last_updated_at') String? last_updated_at,


      ) = _HomeWalletBalance;

  factory HomeWalletBalance.fromJson(Map<String, dynamic> json) =>
      _$HomeWalletBalanceFromJson(json);
}





@freezed
abstract class HomeWalletTransactionDetails with _$HomeWalletTransactionDetails {
  const factory HomeWalletTransactionDetails(

      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'transaction_id') String? transaction_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'transaction_status') String? transaction_status,
      @JsonKey(name: 'payment_status') String? payment_status,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'description') String? description,

      ) = _HomeWalletTransactionDetails;

  factory HomeWalletTransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$HomeWalletTransactionDetailsFromJson(json);
}


