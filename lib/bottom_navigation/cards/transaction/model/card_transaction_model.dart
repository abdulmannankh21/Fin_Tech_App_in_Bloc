// To parse this JSON data, do
//
//     final cardTransactionModel = cardTransactionModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_transaction_model.freezed.dart';
part 'card_transaction_model.g.dart';

@freezed
abstract class CardTransactionModel with _$CardTransactionModel {
  const factory CardTransactionModel(
   Status? status,
    String? cardid,
   @JsonKey(name: "card_transaction") Data? data,
  ) = _CardTransactionModel;

  factory CardTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$CardTransactionModelFromJson(json);
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
abstract class Data with _$Data {
  const factory Data(
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'entry') List<TransactionModel>? entry,
      @JsonKey(name: 'responseCount') int? responseCount,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel(
      @JsonKey(name: 'actualBalanceAdjustment') ActualBalanceAdjustment? actualBalanceAdjustment,
      @JsonKey(name: 'actualBalanceAfter') ActualBalanceAfter? actualBalanceAfter,
      @JsonKey(name: 'additionalFields') AdditionalFields? additionalFields,
      @JsonKey(name: 'availableBalanceAdjustment') AvailableBalanceAdjustment? availableBalanceAdjustment,
      @JsonKey(name: 'availableBalanceAfter') AvailableBalanceAfter? availableBalanceAfter,
      @JsonKey(name: 'balanceAfter') BalanceAfter? balanceAfter,
      @JsonKey(name: 'cardholderFee') CardholderFee? cardholderFee,
      @JsonKey(name: 'transactionAmount') TransactionAmount? transactionAmount,
      @JsonKey(name: 'transactionFee') TransactionFee? transactionFee,
      @JsonKey(name: 'transactionId') TransactionId? transactionId,
      @JsonKey(name: 'entryState') String? entryState,
      @JsonKey(name: 'processedTimestamp') double? processedTimestamp,



      ) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

@freezed
abstract class ActualBalanceAdjustment with _$ActualBalanceAdjustment {
  const factory ActualBalanceAdjustment(
      double amount,
      String currency,
      ) = _ActualBalanceAdjustment;

  factory ActualBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$ActualBalanceAdjustmentFromJson(json);
}
@freezed
abstract class ActualBalanceAfter with _$ActualBalanceAfter {
  const factory ActualBalanceAfter(
      double amount,
      String currency,
      ) = _ActualBalanceAfter;

  factory ActualBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$ActualBalanceAfterFromJson(json);
}

@freezed
abstract class AvailableBalanceAdjustment with _$AvailableBalanceAdjustment {
  const factory AvailableBalanceAdjustment(
      double amount,
      String currency,
      ) = _AvailableBalanceAdjustment;

  factory AvailableBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$AvailableBalanceAdjustmentFromJson(json);
}
@freezed
abstract class AvailableBalanceAfter with _$AvailableBalanceAfter {
  const factory AvailableBalanceAfter(
      double amount,
      String currency,
      ) = _AvailableBalanceAfter;

  factory AvailableBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$AvailableBalanceAfterFromJson(json);
}
@freezed
abstract class BalanceAfter with _$BalanceAfter {
  const factory BalanceAfter(
      double amount,
      String currency,
      ) = _BalanceAfter;

  factory BalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$BalanceAfterFromJson(json);
}
@freezed
abstract class CardholderFee with _$CardholderFee {
  const factory CardholderFee(
      double amount,
      String currency,
      ) = _CardholderFee;

  factory CardholderFee.fromJson(Map<String, dynamic> json) =>
      _$CardholderFeeFromJson(json);
}
@freezed
abstract class TransactionAmount with _$TransactionAmount{
  const factory TransactionAmount(
      double amount,
      String currency,
      ) = _TransactionAmount;

  factory TransactionAmount.fromJson(Map<String, dynamic> json) =>
      _$TransactionAmountFromJson(json);
}
@freezed
abstract class TransactionFee with _$TransactionFee {
  const factory TransactionFee(
      double amount,
      String currency,
      ) = _TransactionFee;

  factory TransactionFee.fromJson(Map<String, dynamic> json) =>
      _$TransactionFeeFromJson(json);
}

@freezed
abstract class TransactionId with _$TransactionId {
  const factory TransactionId(
      String id,
      String type,
      ) = _TransactionId;

  factory TransactionId.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdFromJson(json);
}

@freezed
abstract class AdditionalFields with _$AdditionalFields {
  const factory AdditionalFields(
      String? sender,
      String? senderIban,
      String? senderReference,
      String? destinationInstrumentType,
      String? destinationInstrumentFriendlyName,
      String? destinationInstrumentId,
      String? beneficiaryName,
      String? beneficiaryAccount,
      String? beneficiaryBankCode,
      String? merchantName,
      String? merchantCategoryCode,
      String? merchantTerminalCountry,
      String? sourceInstrumentType,
      String? sourceInstrumentId,
      String? forexPaddingCurrency,
      String? forexPaddingAmount,
      String? note,
      String? sourceInstrumentFriendlyName,
      String? sourceIdentityType,
      String? sourceIdentityId,
      String? sourceIdentityName,
      String? exchangeRate,
      String? authorisationState,
      String? authorisationRelatedId,
      String? settlementRelatedId,
      String? chargeFeeType,
      String? relatedTransactionId,
      String? relatedTransactionIdType,
      String? merchantId,
      String? merchantTransactionType,
      String? systemTransactionType,
      String? authorisationCode,
      String? relatedCardId,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? mandateId,
      String? merchantReference
      ) = _AdditionalFields;

  factory AdditionalFields.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFieldsFromJson(json);
}

