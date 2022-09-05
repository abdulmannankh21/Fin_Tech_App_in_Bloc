// To parse this JSON data, do
//
//     final unblockCardModel = unblockCardModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unblock_card_model.freezed.dart';
part 'unblock_card_model.g.dart';

@freezed
abstract class UnblockCardModel with _$UnblockCardModel {
  const factory UnblockCardModel(

      int? code,
      String? status,
  ) = _UnblockCardModel;

  factory UnblockCardModel.fromJson(Map<String, dynamic> json) =>
      _$UnblockCardModelFromJson(json);
}

