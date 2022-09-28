// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonResponseModel _$$_CommonResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CommonResponseModel(
      json['result'] as String?,
      json['status'] as String?,
      json['code'] as int,
      json['message'] as String,
      json['fee'] as String?,
    );

Map<String, dynamic> _$$_CommonResponseModelToJson(
        _$_CommonResponseModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'fee': instance.fee,
    };

_$_MasterCardDetails _$$_MasterCardDetailsFromJson(Map<String, dynamic> json) =>
    _$_MasterCardDetails(
      json['result'] as String,
      json['code'] as int,
      json['message'] as String?,
      json['fee'] as String?,
      json['weavrtoken'] as String?,
      json['cardNumber'] as String?,
      json['uikey'] as String?,
      json['cvv'] as String?,
      json['name_on_card'] as String?,
      json['expiration'] as String?,
      json['webview_url'] as String?,
    );

Map<String, dynamic> _$$_MasterCardDetailsToJson(
        _$_MasterCardDetails instance) =>
    <String, dynamic>{
      'result': instance.result,
      'code': instance.code,
      'message': instance.message,
      'fee': instance.fee,
      'weavrtoken': instance.weavrtoken,
      'cardNumber': instance.cardNumber,
      'uikey': instance.uikey,
      'cvv': instance.cvv,
      'name_on_card': instance.name_on_card,
      'expiration': instance.expiration,
      'webview_url': instance.webview_url,
    };

_$_TransactionDetails _$$_TransactionDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionDetails(
      json['result'] as String,
      json['code'] as int,
      EntryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionDetailsToJson(
        _$_TransactionDetails instance) =>
    <String, dynamic>{
      'result': instance.result,
      'code': instance.code,
      'data': instance.data,
    };

_$_EntryData _$$_EntryDataFromJson(Map<String, dynamic> json) => _$_EntryData(
      EntryResponse.fromJson(json['response'] as Map<String, dynamic>),
      json['code'] as int,
    );

Map<String, dynamic> _$$_EntryDataToJson(_$_EntryData instance) =>
    <String, dynamic>{
      'response': instance.response,
      'code': instance.code,
    };

_$_EntryResponse _$$_EntryResponseFromJson(Map<String, dynamic> json) =>
    _$_EntryResponse(
      (json['entry'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['count'] as int,
      json['responseCount'] as int,
    );

Map<String, dynamic> _$$_EntryResponseToJson(_$_EntryResponse instance) =>
    <String, dynamic>{
      'entry': instance.entry,
      'count': instance.count,
      'responseCount': instance.responseCount,
    };

_$_Entry _$$_EntryFromJson(Map<String, dynamic> json) => _$_Entry(
      json['txId'] == null
          ? null
          : TransactionId.fromJson(json['txId'] as Map<String, dynamic>),
      json['transactionAmount'] == null
          ? null
          : TransactionAmount.fromJson(
              json['transactionAmount'] as Map<String, dynamic>),
      json['balanceAfter'] == null
          ? null
          : BalanceAfter.fromJson(json['balanceAfter'] as Map<String, dynamic>),
      json['cardholderFee'] == null
          ? null
          : CardholderFee.fromJson(
              json['cardholderFee'] as Map<String, dynamic>),
      json['processedTimestamp'] as String?,
      json['statementEntryState'] as String?,
      json['transactionState'] as String?,
      json['sourceAmount'] == null
          ? null
          : SourceAmount.fromJson(json['sourceAmount'] as Map<String, dynamic>),
      json['additionalFields'] == null
          ? null
          : AdditionalFields.fromJson(
              json['additionalFields'] as Map<String, dynamic>),
      json['actualBalanceAfter'] == null
          ? null
          : ActualBalanceAfter.fromJson(
              json['actualBalanceAfter'] as Map<String, dynamic>),
      json['actualBalanceAdjustment'] == null
          ? null
          : ActualBalanceAdjustment.fromJson(
              json['actualBalanceAdjustment'] as Map<String, dynamic>),
      json['availableBalanceAfter'] == null
          ? null
          : AvailableBalanceAfter.fromJson(
              json['availableBalanceAfter'] as Map<String, dynamic>),
      json['availableBalanceAdjustment'] == null
          ? null
          : AvailableBalanceAdjustment.fromJson(
              json['availableBalanceAdjustment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EntryToJson(_$_Entry instance) => <String, dynamic>{
      'txId': instance.txId,
      'transactionAmount': instance.transactionAmount,
      'balanceAfter': instance.balanceAfter,
      'cardholderFee': instance.cardholderFee,
      'processedTimestamp': instance.processedTimestamp,
      'statementEntryState': instance.statementEntryState,
      'transactionState': instance.transactionState,
      'sourceAmount': instance.sourceAmount,
      'additionalFields': instance.additionalFields,
      'actualBalanceAfter': instance.actualBalanceAfter,
      'actualBalanceAdjustment': instance.actualBalanceAdjustment,
      'availableBalanceAfter': instance.availableBalanceAfter,
      'availableBalanceAdjustment': instance.availableBalanceAdjustment,
    };

_$_TransactionId _$$_TransactionIdFromJson(Map<String, dynamic> json) =>
    _$_TransactionId(
      json['type'] as String,
      json['id'] as String,
    );

Map<String, dynamic> _$$_TransactionIdToJson(_$_TransactionId instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
    };

_$_TransactionAmount _$$_TransactionAmountFromJson(Map<String, dynamic> json) =>
    _$_TransactionAmount(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_TransactionAmountToJson(
        _$_TransactionAmount instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_BalanceAfter _$$_BalanceAfterFromJson(Map<String, dynamic> json) =>
    _$_BalanceAfter(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_BalanceAfterToJson(_$_BalanceAfter instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_CardholderFee _$$_CardholderFeeFromJson(Map<String, dynamic> json) =>
    _$_CardholderFee(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_CardholderFeeToJson(_$_CardholderFee instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_SourceAmount _$$_SourceAmountFromJson(Map<String, dynamic> json) =>
    _$_SourceAmount(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_SourceAmountToJson(_$_SourceAmount instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_AvailableBalanceAdjustment _$$_AvailableBalanceAdjustmentFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableBalanceAdjustment(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_AvailableBalanceAdjustmentToJson(
        _$_AvailableBalanceAdjustment instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_AvailableBalanceAfter _$$_AvailableBalanceAfterFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableBalanceAfter(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_AvailableBalanceAfterToJson(
        _$_AvailableBalanceAfter instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_ActualBalanceAdjustment _$$_ActualBalanceAdjustmentFromJson(
        Map<String, dynamic> json) =>
    _$_ActualBalanceAdjustment(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_ActualBalanceAdjustmentToJson(
        _$_ActualBalanceAdjustment instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_ActualBalanceAfter _$$_ActualBalanceAfterFromJson(
        Map<String, dynamic> json) =>
    _$_ActualBalanceAfter(
      json['currency'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$$_ActualBalanceAfterToJson(
        _$_ActualBalanceAfter instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };

_$_AdditionalFields _$$_AdditionalFieldsFromJson(Map<String, dynamic> json) =>
    _$_AdditionalFields(
      json['authorisationCode'] as String?,
      json['forexFeeCurrency'] as String?,
      json['forexFeeAmount'] as String?,
      json['authorisationRelatedId'] as String?,
      json['merchantTransactionType'] as String?,
      json['merchantTerminalCountry'] as String?,
      json['merchantCategoryCode'] as String?,
      json['merchantId'] as String?,
      json['merchantName'] as String?,
      json['exchangeRate'] as String?,
    );

Map<String, dynamic> _$$_AdditionalFieldsToJson(_$_AdditionalFields instance) =>
    <String, dynamic>{
      'authorisationCode': instance.authorisationCode,
      'forexFeeCurrency': instance.forexFeeCurrency,
      'forexFeeAmount': instance.forexFeeAmount,
      'authorisationRelatedId': instance.authorisationRelatedId,
      'merchantTransactionType': instance.merchantTransactionType,
      'merchantTerminalCountry': instance.merchantTerminalCountry,
      'merchantCategoryCode': instance.merchantCategoryCode,
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
      'exchangeRate': instance.exchangeRate,
    };
