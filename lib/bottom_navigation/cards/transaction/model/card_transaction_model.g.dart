// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardTransactionModel _$$_CardTransactionModelFromJson(
        Map<String, dynamic> json) =>
    _$_CardTransactionModel(
      json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      json['cardid'] as String?,
      json['card_transaction'] == null
          ? null
          : Data.fromJson(json['card_transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CardTransactionModelToJson(
        _$_CardTransactionModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'cardid': instance.cardid,
      'card_transaction': instance.data,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      json['result'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['count'] as int?,
      (json['entry'] as List<dynamic>?)
          ?.map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['responseCount'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'count': instance.count,
      'entry': instance.entry,
      'responseCount': instance.responseCount,
    };

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      json['actualBalanceAdjustment'] == null
          ? null
          : ActualBalanceAdjustment.fromJson(
              json['actualBalanceAdjustment'] as Map<String, dynamic>),
      json['actualBalanceAfter'] == null
          ? null
          : ActualBalanceAfter.fromJson(
              json['actualBalanceAfter'] as Map<String, dynamic>),
      json['additionalFields'] == null
          ? null
          : AdditionalFields.fromJson(
              json['additionalFields'] as Map<String, dynamic>),
      json['availableBalanceAdjustment'] == null
          ? null
          : AvailableBalanceAdjustment.fromJson(
              json['availableBalanceAdjustment'] as Map<String, dynamic>),
      json['availableBalanceAfter'] == null
          ? null
          : AvailableBalanceAfter.fromJson(
              json['availableBalanceAfter'] as Map<String, dynamic>),
      json['balanceAfter'] == null
          ? null
          : BalanceAfter.fromJson(json['balanceAfter'] as Map<String, dynamic>),
      json['cardholderFee'] == null
          ? null
          : CardholderFee.fromJson(
              json['cardholderFee'] as Map<String, dynamic>),
      json['transactionAmount'] == null
          ? null
          : TransactionAmount.fromJson(
              json['transactionAmount'] as Map<String, dynamic>),
      json['transactionFee'] == null
          ? null
          : TransactionFee.fromJson(
              json['transactionFee'] as Map<String, dynamic>),
      json['transactionId'] == null
          ? null
          : TransactionId.fromJson(
              json['transactionId'] as Map<String, dynamic>),
      json['entryState'] as String?,
      (json['processedTimestamp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'actualBalanceAdjustment': instance.actualBalanceAdjustment,
      'actualBalanceAfter': instance.actualBalanceAfter,
      'additionalFields': instance.additionalFields,
      'availableBalanceAdjustment': instance.availableBalanceAdjustment,
      'availableBalanceAfter': instance.availableBalanceAfter,
      'balanceAfter': instance.balanceAfter,
      'cardholderFee': instance.cardholderFee,
      'transactionAmount': instance.transactionAmount,
      'transactionFee': instance.transactionFee,
      'transactionId': instance.transactionId,
      'entryState': instance.entryState,
      'processedTimestamp': instance.processedTimestamp,
    };

_$_ActualBalanceAdjustment _$$_ActualBalanceAdjustmentFromJson(
        Map<String, dynamic> json) =>
    _$_ActualBalanceAdjustment(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_ActualBalanceAdjustmentToJson(
        _$_ActualBalanceAdjustment instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_ActualBalanceAfter _$$_ActualBalanceAfterFromJson(
        Map<String, dynamic> json) =>
    _$_ActualBalanceAfter(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_ActualBalanceAfterToJson(
        _$_ActualBalanceAfter instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_AvailableBalanceAdjustment _$$_AvailableBalanceAdjustmentFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableBalanceAdjustment(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_AvailableBalanceAdjustmentToJson(
        _$_AvailableBalanceAdjustment instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_AvailableBalanceAfter _$$_AvailableBalanceAfterFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableBalanceAfter(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_AvailableBalanceAfterToJson(
        _$_AvailableBalanceAfter instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_BalanceAfter _$$_BalanceAfterFromJson(Map<String, dynamic> json) =>
    _$_BalanceAfter(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_BalanceAfterToJson(_$_BalanceAfter instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_CardholderFee _$$_CardholderFeeFromJson(Map<String, dynamic> json) =>
    _$_CardholderFee(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_CardholderFeeToJson(_$_CardholderFee instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_TransactionAmount _$$_TransactionAmountFromJson(Map<String, dynamic> json) =>
    _$_TransactionAmount(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_TransactionAmountToJson(
        _$_TransactionAmount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_TransactionFee _$$_TransactionFeeFromJson(Map<String, dynamic> json) =>
    _$_TransactionFee(
      (json['amount'] as num).toDouble(),
      json['currency'] as String,
    );

Map<String, dynamic> _$$_TransactionFeeToJson(_$_TransactionFee instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$_TransactionId _$$_TransactionIdFromJson(Map<String, dynamic> json) =>
    _$_TransactionId(
      json['id'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$$_TransactionIdToJson(_$_TransactionId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

_$_AdditionalFields _$$_AdditionalFieldsFromJson(Map<String, dynamic> json) =>
    _$_AdditionalFields(
      json['sender'] as String?,
      json['senderIban'] as String?,
      json['senderReference'] as String?,
      json['destinationInstrumentType'] as String?,
      json['destinationInstrumentFriendlyName'] as String?,
      json['destinationInstrumentId'] as String?,
      json['beneficiaryName'] as String?,
      json['beneficiaryAccount'] as String?,
      json['beneficiaryBankCode'] as String?,
      json['merchantName'] as String?,
      json['merchantCategoryCode'] as String?,
      json['merchantTerminalCountry'] as String?,
      json['sourceInstrumentType'] as String?,
      json['sourceInstrumentId'] as String?,
      json['forexPaddingCurrency'] as String?,
      json['forexPaddingAmount'] as String?,
      json['note'] as String?,
      json['sourceInstrumentFriendlyName'] as String?,
      json['sourceIdentityType'] as String?,
      json['sourceIdentityId'] as String?,
      json['sourceIdentityName'] as String?,
      json['exchangeRate'] as String?,
      json['authorisationState'] as String?,
      json['authorisationRelatedId'] as String?,
      json['settlementRelatedId'] as String?,
      json['chargeFeeType'] as String?,
      json['relatedTransactionId'] as String?,
      json['relatedTransactionIdType'] as String?,
      json['merchantId'] as String?,
      json['merchantTransactionType'] as String?,
      json['systemTransactionType'] as String?,
      json['authorisationCode'] as String?,
      json['relatedCardId'] as String?,
      json['forexFeeCurrency'] as String?,
      json['forexFeeAmount'] as String?,
      json['mandateId'] as String?,
      json['merchantReference'] as String?,
    );

Map<String, dynamic> _$$_AdditionalFieldsToJson(_$_AdditionalFields instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'senderIban': instance.senderIban,
      'senderReference': instance.senderReference,
      'destinationInstrumentType': instance.destinationInstrumentType,
      'destinationInstrumentFriendlyName':
          instance.destinationInstrumentFriendlyName,
      'destinationInstrumentId': instance.destinationInstrumentId,
      'beneficiaryName': instance.beneficiaryName,
      'beneficiaryAccount': instance.beneficiaryAccount,
      'beneficiaryBankCode': instance.beneficiaryBankCode,
      'merchantName': instance.merchantName,
      'merchantCategoryCode': instance.merchantCategoryCode,
      'merchantTerminalCountry': instance.merchantTerminalCountry,
      'sourceInstrumentType': instance.sourceInstrumentType,
      'sourceInstrumentId': instance.sourceInstrumentId,
      'forexPaddingCurrency': instance.forexPaddingCurrency,
      'forexPaddingAmount': instance.forexPaddingAmount,
      'note': instance.note,
      'sourceInstrumentFriendlyName': instance.sourceInstrumentFriendlyName,
      'sourceIdentityType': instance.sourceIdentityType,
      'sourceIdentityId': instance.sourceIdentityId,
      'sourceIdentityName': instance.sourceIdentityName,
      'exchangeRate': instance.exchangeRate,
      'authorisationState': instance.authorisationState,
      'authorisationRelatedId': instance.authorisationRelatedId,
      'settlementRelatedId': instance.settlementRelatedId,
      'chargeFeeType': instance.chargeFeeType,
      'relatedTransactionId': instance.relatedTransactionId,
      'relatedTransactionIdType': instance.relatedTransactionIdType,
      'merchantId': instance.merchantId,
      'merchantTransactionType': instance.merchantTransactionType,
      'systemTransactionType': instance.systemTransactionType,
      'authorisationCode': instance.authorisationCode,
      'relatedCardId': instance.relatedCardId,
      'forexFeeCurrency': instance.forexFeeCurrency,
      'forexFeeAmount': instance.forexFeeAmount,
      'mandateId': instance.mandateId,
      'merchantReference': instance.merchantReference,
    };
