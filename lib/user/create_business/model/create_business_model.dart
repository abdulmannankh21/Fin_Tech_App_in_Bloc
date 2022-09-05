
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_business_model.freezed.dart';
part 'create_business_model.g.dart';


@freezed
abstract class CreateBusinessModel with _$CreateBusinessModel {
  const factory CreateBusinessModel(
      String? status,
      int? code,
      String? message,
      Data? data,
      ) = _CreateBusinessModel;

  factory CreateBusinessModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBusinessModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data(
      @JsonKey(name: 'last_inserted_user_id') bool? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      @JsonKey(name: 'logintoken') String? loginToken,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class UserDataInsert with _$UserDataInsert {
  const factory UserDataInsert(
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email')String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified,
      @JsonKey(name: 'ewallet_reference_id') String? ewalletReferenceId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      @JsonKey(name: 'contact_id') String? contactId,
      @JsonKey(name: 'mothers_name') String? mothersName,
      @JsonKey(name: 'line_1') String? line1,
      @JsonKey(name: 'line_2') dynamic line2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'state_code') dynamic stateCode,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'country_code') dynamic countryCode,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'date_of_birth') String dob,
      @JsonKey(name: 'company_name') String? companyName,
      dynamic currency,
      String? zip,
      String? roles,
      //  @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
      ) = _UserDataInsert;

  factory UserDataInsert.fromJson(Map<String, dynamic> json) =>
      _$UserDataInsertFromJson(json);
}
