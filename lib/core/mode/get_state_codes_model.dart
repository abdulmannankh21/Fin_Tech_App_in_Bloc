import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_state_codes_model.freezed.dart';
part 'get_state_codes_model.g.dart';

@freezed
abstract class GetStateCodesModel with _$GetStateCodesModel {
  const factory GetStateCodesModel(
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'state_name')String? stateName,
  ) = _GetStateCodesModel;

  factory GetStateCodesModel.fromJson(Map<String, dynamic> json) =>
      _$GetStateCodesModelFromJson(json);
}
