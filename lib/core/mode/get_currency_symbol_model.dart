// To parse this JSON data, do
//
//     final getCurrencySymbolModel = getCurrencySymbolModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_currency_symbol_model.freezed.dart';
part 'get_currency_symbol_model.g.dart';

@freezed
abstract class GetCurrencySymbolModel with _$GetCurrencySymbolModel {
  const factory GetCurrencySymbolModel(
    String? id,
    String? name,
    String? isoAlpha2,
    String? isoAlpha3,
    String? currencyCode,
    String? currencyName,
    String? currencySign,
    String? phoneCode,
  ) = _GetCurrencySymbolModel;

  factory GetCurrencySymbolModel.fromJson(Map<String, dynamic> json) =>
      _$GetCurrencySymbolModelFromJson(json);
}
