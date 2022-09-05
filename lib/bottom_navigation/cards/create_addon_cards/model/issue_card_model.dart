// To parse this JSON data, do
//
//     final issueCardModel = issueCardModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_card_model.freezed.dart';
part 'issue_card_model.g.dart';

@freezed
abstract class IssueCardModel with _$IssueCardModel {
  const factory IssueCardModel(
      Status? status,
    String? currency,
    String? cardid,
  ) = _IssueCardModel;

  factory IssueCardModel.fromJson(Map<String, dynamic> json) =>
      _$IssueCardModelFromJson(json);
}

@freezed
abstract class Status with _$Status {
  const factory Status(
      String? result,
      String? message,
      ) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);
}