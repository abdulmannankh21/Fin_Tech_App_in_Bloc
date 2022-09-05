// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_image_change_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileImageChangeModel _$ProfileImageChangeModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileImageChangeModel.fromJson(json);
}

/// @nodoc
class _$ProfileImageChangeModelTearOff {
  const _$ProfileImageChangeModelTearOff();

  _ProfileImageChangeModel call(
      int? code, String? status, String? merchant_logo) {
    return _ProfileImageChangeModel(
      code,
      status,
      merchant_logo,
    );
  }

  ProfileImageChangeModel fromJson(Map<String, Object> json) {
    return ProfileImageChangeModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileImageChangeModel = _$ProfileImageChangeModelTearOff();

/// @nodoc
mixin _$ProfileImageChangeModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get merchant_logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageChangeModelCopyWith<ProfileImageChangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageChangeModelCopyWith<$Res> {
  factory $ProfileImageChangeModelCopyWith(ProfileImageChangeModel value,
          $Res Function(ProfileImageChangeModel) then) =
      _$ProfileImageChangeModelCopyWithImpl<$Res>;
  $Res call({int? code, String? status, String? merchant_logo});
}

/// @nodoc
class _$ProfileImageChangeModelCopyWithImpl<$Res>
    implements $ProfileImageChangeModelCopyWith<$Res> {
  _$ProfileImageChangeModelCopyWithImpl(this._value, this._then);

  final ProfileImageChangeModel _value;
  // ignore: unused_field
  final $Res Function(ProfileImageChangeModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? merchant_logo = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant_logo: merchant_logo == freezed
          ? _value.merchant_logo
          : merchant_logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileImageChangeModelCopyWith<$Res>
    implements $ProfileImageChangeModelCopyWith<$Res> {
  factory _$ProfileImageChangeModelCopyWith(_ProfileImageChangeModel value,
          $Res Function(_ProfileImageChangeModel) then) =
      __$ProfileImageChangeModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? status, String? merchant_logo});
}

/// @nodoc
class __$ProfileImageChangeModelCopyWithImpl<$Res>
    extends _$ProfileImageChangeModelCopyWithImpl<$Res>
    implements _$ProfileImageChangeModelCopyWith<$Res> {
  __$ProfileImageChangeModelCopyWithImpl(_ProfileImageChangeModel _value,
      $Res Function(_ProfileImageChangeModel) _then)
      : super(_value, (v) => _then(v as _ProfileImageChangeModel));

  @override
  _ProfileImageChangeModel get _value =>
      super._value as _ProfileImageChangeModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? merchant_logo = freezed,
  }) {
    return _then(_ProfileImageChangeModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_ProfileImageChangeModel implements _ProfileImageChangeModel {
  const _$_ProfileImageChangeModel(this.code, this.status, this.merchant_logo);

  factory _$_ProfileImageChangeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileImageChangeModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? merchant_logo;

  @override
  String toString() {
    return 'ProfileImageChangeModel(code: $code, status: $status, merchant_logo: $merchant_logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileImageChangeModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.merchant_logo, merchant_logo) ||
                const DeepCollectionEquality()
                    .equals(other.merchant_logo, merchant_logo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(merchant_logo);

  @JsonKey(ignore: true)
  @override
  _$ProfileImageChangeModelCopyWith<_ProfileImageChangeModel> get copyWith =>
      __$ProfileImageChangeModelCopyWithImpl<_ProfileImageChangeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileImageChangeModelToJson(this);
  }
}

abstract class _ProfileImageChangeModel implements ProfileImageChangeModel {
  const factory _ProfileImageChangeModel(
          int? code, String? status, String? merchant_logo) =
      _$_ProfileImageChangeModel;

  factory _ProfileImageChangeModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileImageChangeModel.fromJson;

  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get merchant_logo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileImageChangeModelCopyWith<_ProfileImageChangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
class _$MessageModelTearOff {
  const _$MessageModelTearOff();

  _MessageModel call(List<String>? error) {
    return _MessageModel(
      error,
    );
  }

  MessageModel fromJson(Map<String, Object> json) {
    return MessageModel.fromJson(json);
  }
}

/// @nodoc
const $MessageModel = _$MessageModelTearOff();

/// @nodoc
mixin _$MessageModel {
  List<String>? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res>;
  $Res call({List<String>? error});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res> implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  final MessageModel _value;
  // ignore: unused_field
  final $Res Function(MessageModel) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(
          _MessageModel value, $Res Function(_MessageModel) then) =
      __$MessageModelCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? error});
}

/// @nodoc
class __$MessageModelCopyWithImpl<$Res> extends _$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(
      _MessageModel _value, $Res Function(_MessageModel) _then)
      : super(_value, (v) => _then(v as _MessageModel));

  @override
  _MessageModel get _value => super._value as _MessageModel;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_MessageModel(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel implements _MessageModel {
  const _$_MessageModel(this.error);

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

  @override
  final List<String>? error;

  @override
  String toString() {
    return 'MessageModel(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageModel &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$MessageModelCopyWith<_MessageModel> get copyWith =>
      __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(this);
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(List<String>? error) = _$_MessageModel;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override
  List<String>? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageModelCopyWith<_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
