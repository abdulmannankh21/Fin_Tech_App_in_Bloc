// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateWalletModel _$$_CreateWalletModelFromJson(Map<String, dynamic> json) =>
    _$_CreateWalletModel(
      json['status'] as String?,
      json['code'] as int?,
      json['message'] as String?,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateWalletModelToJson(
        _$_CreateWalletModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['last_inserted_user_id'] as bool?,
      json['user_data_insert'] == null
          ? null
          : UserDataInsert.fromJson(
              json['user_data_insert'] as Map<String, dynamic>),
      json['logintoken'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'last_inserted_user_id': instance.lastInsertedUserId,
      'user_data_insert': instance.userDataInsert,
      'logintoken': instance.loginToken,
    };

_$_UserDataInsert _$$_UserDataInsertFromJson(Map<String, dynamic> json) =>
    _$_UserDataInsert(
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['email'] as String?,
      json['phone_number'] as String?,
      json['phone_code'] as String?,
      json['password'] as String?,
      json['type'] as String?,
      json['entity_type'] as String?,
      json['is_email_verified'] as String?,
      json['ewallet_reference_id'] as String?,
      json['ewallet_id'] as String?,
      json['contact_id'] as String?,
      json['mothers_name'] as String?,
      json['line_1'] as String?,
      json['line_2'],
      json['city'] as String?,
      json['state'] as String?,
      json['state_code'],
      json['country'] as String?,
      json['country_code'],
      json['token'] as String,
      json['date_of_birth'] as String,
      json['company_name'] as String?,
      json['currency'],
      json['zip'] as String?,
      json['roles'] as String?,
    );

Map<String, dynamic> _$$_UserDataInsertToJson(_$_UserDataInsert instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'phone_code': instance.phoneCode,
      'password': instance.password,
      'type': instance.type,
      'entity_type': instance.entityType,
      'is_email_verified': instance.isEmailVerified,
      'ewallet_reference_id': instance.ewalletReferenceId,
      'ewallet_id': instance.ewalletId,
      'contact_id': instance.contactId,
      'mothers_name': instance.mothersName,
      'line_1': instance.line1,
      'line_2': instance.line2,
      'city': instance.city,
      'state': instance.state,
      'state_code': instance.stateCode,
      'country': instance.country,
      'country_code': instance.countryCode,
      'token': instance.token,
      'date_of_birth': instance.dob,
      'company_name': instance.companyName,
      'currency': instance.currency,
      'zip': instance.zip,
      'roles': instance.roles,
    };
