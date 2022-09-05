
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_mobile_model.freezed.dart';
part 'verify_mobile_model.g.dart';


@freezed
abstract class VerifyMobileModel with _$VerifyMobileModel {
  const factory VerifyMobileModel(
    String? result,
    int? code,
    String? message,
    String? kycreference,
  ) = _VerifyMobileModel;

  factory VerifyMobileModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyMobileModelFromJson(json);
}
