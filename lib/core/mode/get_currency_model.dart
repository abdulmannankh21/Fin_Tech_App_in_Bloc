// To parse this JSON data, do
//
//     final getCurrencyModel = getCurrencyModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_currency_model.freezed.dart';
part 'get_currency_model.g.dart';

@freezed
abstract class GetCurrencyModel with _$GetCurrencyModel {
  const factory GetCurrencyModel(
    String? id,
    String? name,
    String? isoAlpha2,
    String? isoAlpha3,
    String? currencyCode,
    String? currencyName,
    String? currencySign,
    String? phoneCode,
  ) = _GetCurrencyModel;

  factory GetCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$GetCurrencyModelFromJson(json);
}
