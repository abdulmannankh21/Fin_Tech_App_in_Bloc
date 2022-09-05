// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      String? name,
      String? email,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      int ids,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'card_id') String? cardId,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      String? merchant_logo) {
    return _User(
      name,
      email,
      ewalletId,
      ids,
      phoneNumber,
      cardId,
      type,
      entityType,
      merchant_logo,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId => throw _privateConstructorUsedError;
  int get ids => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  String? get cardId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  String? get merchant_logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? email,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      int ids,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'card_id') String? cardId,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      String? merchant_logo});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? ewalletId = freezed,
    Object? ids = freezed,
    Object? phoneNumber = freezed,
    Object? cardId = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? merchant_logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ewalletId: ewalletId == freezed
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: cardId == freezed
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: entityType == freezed
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant_logo: merchant_logo == freezed
          ? _value.merchant_logo
          : merchant_logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? email,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      int ids,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'card_id') String? cardId,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      String? merchant_logo});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? ewalletId = freezed,
    Object? ids = freezed,
    Object? phoneNumber = freezed,
    Object? cardId = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? merchant_logo = freezed,
  }) {
    return _then(_User(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ewalletId == freezed
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId == freezed
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType == freezed
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant_logo == freezed
          ? _value.merchant_logo
          : merchant_logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      this.name,
      this.email,
      @JsonKey(name: 'ewallet_id') this.ewalletId,
      this.ids,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'card_id') this.cardId,
      this.type,
      @JsonKey(name: 'entity_type') this.entityType,
      this.merchant_logo);

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'ewallet_id')
  final String? ewalletId;
  @override
  final int ids;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'card_id')
  final String? cardId;
  @override
  final String? type;
  @override
  @JsonKey(name: 'entity_type')
  final String? entityType;
  @override
  final String? merchant_logo;

  @override
  String toString() {
    return 'User(name: $name, email: $email, ewalletId: $ewalletId, ids: $ids, phoneNumber: $phoneNumber, cardId: $cardId, type: $type, entityType: $entityType, merchant_logo: $merchant_logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.ewalletId, ewalletId) ||
                const DeepCollectionEquality()
                    .equals(other.ewalletId, ewalletId)) &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.cardId, cardId) ||
                const DeepCollectionEquality().equals(other.cardId, cardId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entityType, entityType) ||
                const DeepCollectionEquality()
                    .equals(other.entityType, entityType)) &&
            (identical(other.merchant_logo, merchant_logo) ||
                const DeepCollectionEquality()
                    .equals(other.merchant_logo, merchant_logo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(ewalletId) ^
      const DeepCollectionEquality().hash(ids) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(cardId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entityType) ^
      const DeepCollectionEquality().hash(merchant_logo);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      String? name,
      String? email,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      int ids,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'card_id') String? cardId,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      String? merchant_logo) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId => throw _privateConstructorUsedError;
  @override
  int get ids => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'card_id')
  String? get cardId => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  @override
  String? get merchant_logo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
