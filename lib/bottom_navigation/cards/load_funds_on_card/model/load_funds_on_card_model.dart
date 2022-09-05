// To parse this JSON data, do
//
//     final loadFundsOnCardModel = loadFundsOnCardModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_funds_on_card_model.freezed.dart';
part 'load_funds_on_card_model.g.dart';

@freezed
abstract class LoadFundsOnCardModel with _$LoadFundsOnCardModel {
  const factory LoadFundsOnCardModel(
    Transaction? transaction,
    Data? status,
  ) = _LoadFundsOnCardModel;

  factory LoadFundsOnCardModel.fromJson(Map<String, dynamic> json) =>
      _$LoadFundsOnCardModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data(
    String? result,
    String? message,
  ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Transaction with _$Transaction{
  const factory Transaction(
      double? creationTimestamp,
      String? id,
      String? profileId,
      String? state,
      String? tag,

  ) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
