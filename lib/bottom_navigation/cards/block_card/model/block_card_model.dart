// To parse this JSON data, do
//
//     final blockCardModel = blockCardModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_card_model.freezed.dart';
part 'block_card_model.g.dart';

@freezed
abstract class BlockCardModel with _$BlockCardModel {
  const factory BlockCardModel(

      int? code,
      String? status,
  ) = _BlockCardModel;

  factory BlockCardModel.fromJson(Map<String, dynamic> json) =>
      _$BlockCardModelFromJson(json);
}
