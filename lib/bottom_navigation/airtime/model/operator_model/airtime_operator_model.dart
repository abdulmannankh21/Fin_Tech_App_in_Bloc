



import 'package:freezed_annotation/freezed_annotation.dart';
part 'airtime_operator_model.freezed.dart';
part 'airtime_operator_model.g.dart';

@freezed
abstract class OperatorModel with _$OperatorModel {
  const factory OperatorModel(

      String? status,
      String? message,
      int? code,
      Data data,
      String? country,
      ) = _OperatorModel;

  factory OperatorModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorModelFromJson(json);
}



@freezed
abstract class Data with _$Data {
  const factory Data(

      List<Response> response,
      String? country,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}


@freezed
abstract class Response with _$Response {
  const factory Response(

      int? id,
      int? operatorId,
      String? name,
      bool? bundle,
      bool? data,
      bool? pin,
      bool? supportsLocalAmounts,
      bool? supportsGeographicalRechargePlans,
      String? denominationType,
      String? senderCurrencyCode,
      String? senderCurrencySymbol,
      String? destinationCurrencyCode,
      String? destinationCurrencySymbol,
      double? commission,
      double? internationalDiscount,
      double? mostPopularAmount,
      double? localDiscount,
      double? minAmount,
      double? mostPopularLocalAmount,
      double? maxAmount,
      double? localMinAmount,
      double? localMaxAmount,
      List<String> logoUrls,
      List<double> fixedAmounts,
      List<double> suggestedAmounts,
      List<double> localFixedAmounts,
      dynamic fixedAmountsDescriptions,



      ) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

