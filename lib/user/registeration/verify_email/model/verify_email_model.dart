
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_model.freezed.dart';
part 'verify_email_model.g.dart';


@freezed
abstract class VerifyEmailModel with _$VerifyEmailModel {
  const factory VerifyEmailModel(
    String? result,
    int? code,
    String? message,
  ) = _VerifyEmailModel;

  factory VerifyEmailModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailModelFromJson(json);
}
