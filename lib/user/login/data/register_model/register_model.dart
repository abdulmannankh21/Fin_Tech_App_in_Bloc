import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
abstract class RegisterModel with _$RegisterModel {
  const factory RegisterModel(
    String? status,
    int? code,
    String? message,
    @JsonKey(name: 'data') Data? data,
  ) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data(
    @JsonKey(name: 'last_inserted_user_id') int? lastInsertedUserId,
    @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
    String? token,
  ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class UserDataInsert with _$UserDataInsert {
  const factory UserDataInsert(
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? password,
    String? type,
    @JsonKey(name: 'entity_type') String? entityType,
    @JsonKey(name: 'is_email_verified') String? isEmailVerified,
  ) = _UserDataInsert;

  factory UserDataInsert.fromJson(Map<String, dynamic> json) =>
      _$UserDataInsertFromJson(json);
}
