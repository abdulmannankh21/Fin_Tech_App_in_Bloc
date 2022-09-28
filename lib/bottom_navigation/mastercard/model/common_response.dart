import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response.freezed.dart';
part 'common_response.g.dart';

@freezed
abstract class CommonResponseModel with _$CommonResponseModel {
  const factory CommonResponseModel(
      String? result,
      String? status,
      int code,
      String message,
      String? fee,
      ) = _CommonResponseModel;

  factory CommonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseModelFromJson(json);
}

@freezed
abstract class MasterCardDetails with _$MasterCardDetails {
  const factory MasterCardDetails(
      String result,
      int code,
      String? message,
      String? fee,
      String? weavrtoken,
      String? cardNumber,
      String? uikey,
      String? cvv,
      String? name_on_card,
      String? expiration,
      String? webview_url,

      ) = _MasterCardDetails;

  factory MasterCardDetails.fromJson(Map<String, dynamic> json) =>
      _$MasterCardDetailsFromJson(json);
}



@freezed
abstract class TransactionDetails with _$TransactionDetails {
  const factory TransactionDetails(

      String result,
      int code,
      EntryData data,
      ) = _TransactionDetails;

  factory TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsFromJson(json);
}

@freezed
abstract class EntryData with _$EntryData {
  const factory EntryData(

      EntryResponse response,
      int code,
      ) = _EntryData;

  factory EntryData.fromJson(Map<String, dynamic> json) =>
      _$EntryDataFromJson(json);
}

@freezed
abstract class EntryResponse with _$EntryResponse {
  const factory EntryResponse(
      List<Entry> entry,
      int count,
      int responseCount,
      ) = _EntryResponse;

  factory EntryResponse.fromJson(Map<String, dynamic> json) =>
      _$EntryResponseFromJson(json);
}


@freezed
abstract class Entry with _$Entry {
  const factory Entry(
      TransactionId? txId,
      TransactionAmount? transactionAmount,
      BalanceAfter? balanceAfter,
      CardholderFee? cardholderFee,
      String? processedTimestamp,
      String? statementEntryState,
      String? transactionState,
      SourceAmount? sourceAmount,
      AdditionalFields? additionalFields,
      ActualBalanceAfter? actualBalanceAfter,
      ActualBalanceAdjustment? actualBalanceAdjustment,
      AvailableBalanceAfter? availableBalanceAfter,
      AvailableBalanceAdjustment? availableBalanceAdjustment,

      ) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) =>
      _$EntryFromJson(json);
}

@freezed
abstract class TransactionId with _$TransactionId {
  const factory TransactionId(
      String type,
      String id,
      ) = _TransactionId;

  factory TransactionId.fromJson(Map<String, dynamic> json) =>
      _$TransactionIdFromJson(json);
}

@freezed
abstract class TransactionAmount with _$TransactionAmount {
  const factory TransactionAmount(
      String currency,
      String amount,
      ) = _TransactionAmount;

  factory TransactionAmount.fromJson(Map<String, dynamic> json) =>
      _$TransactionAmountFromJson(json);
}

@freezed
abstract class BalanceAfter with _$BalanceAfter {
  const factory BalanceAfter(
      String currency,
      String amount,
      ) = _BalanceAfter;

  factory BalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$BalanceAfterFromJson(json);
}

@freezed
abstract class CardholderFee with _$CardholderFee {
  const factory CardholderFee(
      String currency,
      String amount,
      ) = _CardholderFee;

  factory CardholderFee.fromJson(Map<String, dynamic> json) =>
      _$CardholderFeeFromJson(json);
}

@freezed
abstract class SourceAmount with _$SourceAmount {
  const factory SourceAmount(
      String currency,
      String amount,
      ) = _SourceAmount;

  factory SourceAmount.fromJson(Map<String, dynamic> json) =>
      _$SourceAmountFromJson(json);
}

@freezed
abstract class AvailableBalanceAdjustment with _$AvailableBalanceAdjustment {
  const factory AvailableBalanceAdjustment(
      String currency,
      String amount,
      ) = _AvailableBalanceAdjustment;

  factory AvailableBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$AvailableBalanceAdjustmentFromJson(json);
}

@freezed
abstract class AvailableBalanceAfter with _$AvailableBalanceAfter {
  const factory AvailableBalanceAfter(
      String currency,
      String amount,
      ) = _AvailableBalanceAfter;

  factory AvailableBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$AvailableBalanceAfterFromJson(json);
}

@freezed
abstract class ActualBalanceAdjustment with _$ActualBalanceAdjustment {
  const factory ActualBalanceAdjustment(
      String currency,
      String amount,
      ) = _ActualBalanceAdjustment;

  factory ActualBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$ActualBalanceAdjustmentFromJson(json);
}

@freezed
abstract class ActualBalanceAfter with _$ActualBalanceAfter {
  const factory ActualBalanceAfter(
      String currency,
      String amount,
      ) = _ActualBalanceAfter;

  factory ActualBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$ActualBalanceAfterFromJson(json);
}

@freezed
abstract class AdditionalFields with _$AdditionalFields {
  const factory AdditionalFields(
      String? authorisationCode,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? authorisationRelatedId,
      String? merchantTransactionType,
      String? merchantTerminalCountry,
      String? merchantCategoryCode,
      String? merchantId,
      String? merchantName,
      String? exchangeRate,
      ) = _AdditionalFields;

  factory AdditionalFields.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFieldsFromJson(json);
}


