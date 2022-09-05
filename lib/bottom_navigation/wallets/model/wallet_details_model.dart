


import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_details_model.freezed.dart';
part 'wallet_details_model.g.dart';

@freezed
abstract class WalletDetails with _$WalletDetails {
  const factory WalletDetails(
      Status? status,
      List<Transaction> transactions,
      List<Balance> balance,
      List<Subscription> subscription,

      ) = _WalletDetails;

  factory WalletDetails.fromJson(Map<String, dynamic> json) =>
      _$WalletDetailsFromJson(json);
}
@freezed
abstract class Balance with _$Balance{
  const factory Balance(
      String? alias,
      String? user_id,
      String? ewallet_id,
      String? balance,
      String? on_hold_balance,
      String? received_balance,
      String? reserve_balance,
      String? currency,
      String? last_updated_at,
      ) = _Balance;

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);
}

@freezed
abstract class Subscription with _$Subscription{
  const factory Subscription(
      String? email_id,
      String? user_id,
      String? ewallet_id,
      String? id,
      String? plan_id,
      String? plan_name,
      String? plan_type,
      String? plan_currency,
      String? plan_price,
      String? start_date,
      String? end_date,
      String? transaction_id,
      String? coupon,

      ) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction(
      String? transaction_id,
      String? user_id,
      String? transaction_status,
      String? amount,
      String? payment_status,
      String? created_at,
      String? description,
      String? currency,
      ) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
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



