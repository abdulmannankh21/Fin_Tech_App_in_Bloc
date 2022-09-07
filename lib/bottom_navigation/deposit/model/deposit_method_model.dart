import 'package:freezed_annotation/freezed_annotation.dart';

part 'deposit_method_model.freezed.dart';
part 'deposit_method_model.g.dart';

@freezed
abstract class DepositMethodModel with _$DepositMethodModel {
  const factory DepositMethodModel(

      int? code,
      String? status,
      MethodData? data,
      ) = _DepositMethodModel;

  factory DepositMethodModel.fromJson(Map<String, dynamic> json) =>
      _$DepositMethodModelFromJson(json);
}


@freezed
abstract class MethodData with _$MethodData{
  const factory MethodData(
        List<MethodDetails> methods,
        String? image_path,
      ) = _MethodData;

  factory MethodData.fromJson(Map<String, dynamic> json) =>
      _$MethodDataFromJson(json);
}

@freezed
abstract class MethodDetails with _$MethodDetails{
  const factory MethodDetails(
      String? currency,
      String? name,
      String? symbol,
      int? method_code,
      String? gateway_alias,
      String? min_amount,
      String? max_amount,
      String? percent_charge,
      String? fixed_charge,
      String? rate,
      ) = _MethodDetails;

  factory MethodDetails.fromJson(Map<String, dynamic> json) =>
      _$MethodDetailsFromJson(json);
}







