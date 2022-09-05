// To parse this JSON data, do
//
//     final profileImageChangeModel = profileImageChangeModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_change_model.freezed.dart';
part 'profile_image_change_model.g.dart';

@freezed
abstract class ProfileImageChangeModel with _$ProfileImageChangeModel {
  const factory ProfileImageChangeModel(
    int? code,
    String? status,
    String? merchant_logo,
   // MessageModel message,
  ) = _ProfileImageChangeModel;

  factory ProfileImageChangeModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageChangeModelFromJson(json);
}

@freezed
abstract class MessageModel with _$MessageModel {
  const factory MessageModel(
      List<String>? error,
      ) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
