// To parse this JSON data, do
//
//     final blockCardModel = blockCardModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'addon_card_model.freezed.dart';
part 'addon_card_model.g.dart';

@freezed
abstract class AddonCardModel with _$AddonCardModel {
  const factory AddonCardModel(

    List<AddonCard> addon_cards,
    Data? status,
  ) = _AddonCardModel;

  factory AddonCardModel.fromJson(Map<String, dynamic> json) =>
      _$AddonCardModelFromJson(json);
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
abstract class AddonCard with _$AddonCard {
  const factory AddonCard(
      String? id,
      String? user_id,
      String? email_id,
      String? ewallet_id,
      String? card_id,
      String? currency,
      String? nameoncard,
      ) = _AddonCard;

  factory AddonCard.fromJson(Map<String, dynamic> json) => _$AddonCardFromJson(json);
}
