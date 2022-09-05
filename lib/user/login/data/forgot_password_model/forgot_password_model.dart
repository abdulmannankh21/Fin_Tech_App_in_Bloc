import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_model.freezed.dart';
part 'forgot_password_model.g.dart';

@freezed
class ForgotPasswordModel with _$ForgotPasswordModel {
  factory ForgotPasswordModel(
    String status,
    int code,
    String message,
  ) = _ForgotPasswordModel;

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordModelFromJson(json);
}
