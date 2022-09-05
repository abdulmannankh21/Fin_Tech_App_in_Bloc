// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unblock_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnblockCardModel _$UnblockCardModelFromJson(Map<String, dynamic> json) {
  return _UnblockCardModel.fromJson(json);
}

/// @nodoc
class _$UnblockCardModelTearOff {
  const _$UnblockCardModelTearOff();

  _UnblockCardModel call(int? code, String? status) {
    return _UnblockCardModel(
      code,
      status,
    );
  }

  UnblockCardModel fromJson(Map<String, Object> json) {
    return UnblockCardModel.fromJson(json);
  }
}

/// @nodoc
const $UnblockCardModel = _$UnblockCardModelTearOff();

/// @nodoc
mixin _$UnblockCardModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnblockCardModelCopyWith<UnblockCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnblockCardModelCopyWith<$Res> {
  factory $UnblockCardModelCopyWith(
          UnblockCardModel value, $Res Function(UnblockCardModel) then) =
      _$UnblockCardModelCopyWithImpl<$Res>;
  $Res call({int? code, String? status});
}

/// @nodoc
class _$UnblockCardModelCopyWithImpl<$Res>
    implements $UnblockCardModelCopyWith<$Res> {
  _$UnblockCardModelCopyWithImpl(this._value, this._then);

  final UnblockCardModel _value;
  // ignore: unused_field
  final $Res Function(UnblockCardModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$UnblockCardModelCopyWith<$Res>
    implements $UnblockCardModelCopyWith<$Res> {
  factory _$UnblockCardModelCopyWith(
          _UnblockCardModel value, $Res Function(_UnblockCardModel) then) =
      __$UnblockCardModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? status});
}

/// @nodoc
class __$UnblockCardModelCopyWithImpl<$Res>
    extends _$UnblockCardModelCopyWithImpl<$Res>
    implements _$UnblockCardModelCopyWith<$Res> {
  __$UnblockCardModelCopyWithImpl(
      _UnblockCardModel _value, $Res Function(_UnblockCardModel) _then)
      : super(_value, (v) => _then(v as _UnblockCardModel));

  @override
  _UnblockCardModel get _value => super._value as _UnblockCardModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
  }) {
    return _then(_UnblockCardModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnblockCardModel implements _UnblockCardModel {
  const _$_UnblockCardModel(this.code, this.status);

  factory _$_UnblockCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_UnblockCardModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;

  @override
  String toString() {
    return 'UnblockCardModel(code: $code, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnblockCardModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$UnblockCardModelCopyWith<_UnblockCardModel> get copyWith =>
      __$UnblockCardModelCopyWithImpl<_UnblockCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnblockCardModelToJson(this);
  }
}

abstract class _UnblockCardModel implements UnblockCardModel {
  const factory _UnblockCardModel(int? code, String? status) =
      _$_UnblockCardModel;

  factory _UnblockCardModel.fromJson(Map<String, dynamic> json) =
      _$_UnblockCardModel.fromJson;

  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnblockCardModelCopyWith<_UnblockCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
