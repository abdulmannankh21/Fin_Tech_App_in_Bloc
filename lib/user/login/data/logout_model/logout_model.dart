import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_model.freezed.dart';
part 'logout_model.g.dart';

@freezed
abstract class LogoutModel with _$LogoutModel {
  const factory LogoutModel(
    String? status,
    int? code,
    String? message,
    String? data,
  ) = _LogoutModel;

  factory LogoutModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutModelFromJson(json);
}
