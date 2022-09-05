// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'block_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockCardModel _$BlockCardModelFromJson(Map<String, dynamic> json) {
  return _BlockCardModel.fromJson(json);
}

/// @nodoc
class _$BlockCardModelTearOff {
  const _$BlockCardModelTearOff();

  _BlockCardModel call(int? code, String? status) {
    return _BlockCardModel(
      code,
      status,
    );
  }

  BlockCardModel fromJson(Map<String, Object> json) {
    return BlockCardModel.fromJson(json);
  }
}

/// @nodoc
const $BlockCardModel = _$BlockCardModelTearOff();

/// @nodoc
mixin _$BlockCardModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockCardModelCopyWith<BlockCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockCardModelCopyWith<$Res> {
  factory $BlockCardModelCopyWith(
          BlockCardModel value, $Res Function(BlockCardModel) then) =
      _$BlockCardModelCopyWithImpl<$Res>;
  $Res call({int? code, String? status});
}

/// @nodoc
class _$BlockCardModelCopyWithImpl<$Res>
    implements $BlockCardModelCopyWith<$Res> {
  _$BlockCardModelCopyWithImpl(this._value, this._then);

  final BlockCardModel _value;
  // ignore: unused_field
  final $Res Function(BlockCardModel) _then;

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
abstract class _$BlockCardModelCopyWith<$Res>
    implements $BlockCardModelCopyWith<$Res> {
  factory _$BlockCardModelCopyWith(
          _BlockCardModel value, $Res Function(_BlockCardModel) then) =
      __$BlockCardModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? status});
}

/// @nodoc
class __$BlockCardModelCopyWithImpl<$Res>
    extends _$BlockCardModelCopyWithImpl<$Res>
    implements _$BlockCardModelCopyWith<$Res> {
  __$BlockCardModelCopyWithImpl(
      _BlockCardModel _value, $Res Function(_BlockCardModel) _then)
      : super(_value, (v) => _then(v as _BlockCardModel));

  @override
  _BlockCardModel get _value => super._value as _BlockCardModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
  }) {
    return _then(_BlockCardModel(
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
class _$_BlockCardModel implements _BlockCardModel {
  const _$_BlockCardModel(this.code, this.status);

  factory _$_BlockCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_BlockCardModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;

  @override
  String toString() {
    return 'BlockCardModel(code: $code, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlockCardModel &&
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
  _$BlockCardModelCopyWith<_BlockCardModel> get copyWith =>
      __$BlockCardModelCopyWithImpl<_BlockCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockCardModelToJson(this);
  }
}

abstract class _BlockCardModel implements BlockCardModel {
  const factory _BlockCardModel(int? code, String? status) = _$_BlockCardModel;

  factory _BlockCardModel.fromJson(Map<String, dynamic> json) =
      _$_BlockCardModel.fromJson;

  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlockCardModelCopyWith<_BlockCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
