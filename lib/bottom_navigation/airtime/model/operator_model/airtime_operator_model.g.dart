// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airtime_operator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperatorModel _$$_OperatorModelFromJson(Map<String, dynamic> json) =>
    _$_OperatorModel(
      json['status'] as String?,
      json['message'] as String?,
      json['code'] as int?,
      Data.fromJson(json['data'] as Map<String, dynamic>),
      json['country'] as String?,
    );

Map<String, dynamic> _$$_OperatorModelToJson(_$_OperatorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
      'country': instance.country,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      (json['response'] as List<dynamic>)
          .map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['country'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'response': instance.response,
      'country': instance.country,
    };

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      json['id'] as int?,
      json['operatorId'] as int?,
      json['name'] as String?,
      json['bundle'] as bool?,
      json['data'] as bool?,
      json['pin'] as bool?,
      json['supportsLocalAmounts'] as bool?,
      json['supportsGeographicalRechargePlans'] as bool?,
      json['denominationType'] as String?,
      json['senderCurrencyCode'] as String?,
      json['senderCurrencySymbol'] as String?,
      json['destinationCurrencyCode'] as String?,
      json['destinationCurrencySymbol'] as String?,
      (json['commission'] as num?)?.toDouble(),
      (json['internationalDiscount'] as num?)?.toDouble(),
      (json['mostPopularAmount'] as num?)?.toDouble(),
      (json['localDiscount'] as num?)?.toDouble(),
      (json['minAmount'] as num?)?.toDouble(),
      (json['mostPopularLocalAmount'] as num?)?.toDouble(),
      (json['maxAmount'] as num?)?.toDouble(),
      (json['localMinAmount'] as num?)?.toDouble(),
      (json['localMaxAmount'] as num?)?.toDouble(),
      (json['logoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      (json['fixedAmounts'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['suggestedAmounts'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['localFixedAmounts'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      json['fixedAmountsDescriptions'],
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operatorId': instance.operatorId,
      'name': instance.name,
      'bundle': instance.bundle,
      'data': instance.data,
      'pin': instance.pin,
      'supportsLocalAmounts': instance.supportsLocalAmounts,
      'supportsGeographicalRechargePlans':
          instance.supportsGeographicalRechargePlans,
      'denominationType': instance.denominationType,
      'senderCurrencyCode': instance.senderCurrencyCode,
      'senderCurrencySymbol': instance.senderCurrencySymbol,
      'destinationCurrencyCode': instance.destinationCurrencyCode,
      'destinationCurrencySymbol': instance.destinationCurrencySymbol,
      'commission': instance.commission,
      'internationalDiscount': instance.internationalDiscount,
      'mostPopularAmount': instance.mostPopularAmount,
      'localDiscount': instance.localDiscount,
      'minAmount': instance.minAmount,
      'mostPopularLocalAmount': instance.mostPopularLocalAmount,
      'maxAmount': instance.maxAmount,
      'localMinAmount': instance.localMinAmount,
      'localMaxAmount': instance.localMaxAmount,
      'logoUrls': instance.logoUrls,
      'fixedAmounts': instance.fixedAmounts,
      'suggestedAmounts': instance.suggestedAmounts,
      'localFixedAmounts': instance.localFixedAmounts,
      'fixedAmountsDescriptions': instance.fixedAmountsDescriptions,
    };
