// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_state_codes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStateCodesModel _$GetStateCodesModelFromJson(Map<String, dynamic> json) {
  return _GetStateCodesModel.fromJson(json);
}

/// @nodoc
class _$GetStateCodesModelTearOff {
  const _$GetStateCodesModelTearOff();

  _GetStateCodesModel call(@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'state_name') String? stateName) {
    return _GetStateCodesModel(
      code,
      stateName,
    );
  }

  GetStateCodesModel fromJson(Map<String, Object> json) {
    return GetStateCodesModel.fromJson(json);
  }
}

/// @nodoc
const $GetStateCodesModel = _$GetStateCodesModelTearOff();

/// @nodoc
mixin _$GetStateCodesModel {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_name')
  String? get stateName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStateCodesModelCopyWith<GetStateCodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStateCodesModelCopyWith<$Res> {
  factory $GetStateCodesModelCopyWith(
          GetStateCodesModel value, $Res Function(GetStateCodesModel) then) =
      _$GetStateCodesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'state_name') String? stateName});
}

/// @nodoc
class _$GetStateCodesModelCopyWithImpl<$Res>
    implements $GetStateCodesModelCopyWith<$Res> {
  _$GetStateCodesModelCopyWithImpl(this._value, this._then);

  final GetStateCodesModel _value;
  // ignore: unused_field
  final $Res Function(GetStateCodesModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? stateName = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stateName: stateName == freezed
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetStateCodesModelCopyWith<$Res>
    implements $GetStateCodesModelCopyWith<$Res> {
  factory _$GetStateCodesModelCopyWith(
          _GetStateCodesModel value, $Res Function(_GetStateCodesModel) then) =
      __$GetStateCodesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'state_name') String? stateName});
}

/// @nodoc
class __$GetStateCodesModelCopyWithImpl<$Res>
    extends _$GetStateCodesModelCopyWithImpl<$Res>
    implements _$GetStateCodesModelCopyWith<$Res> {
  __$GetStateCodesModelCopyWithImpl(
      _GetStateCodesModel _value, $Res Function(_GetStateCodesModel) _then)
      : super(_value, (v) => _then(v as _GetStateCodesModel));

  @override
  _GetStateCodesModel get _value => super._value as _GetStateCodesModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? stateName = freezed,
  }) {
    return _then(_GetStateCodesModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stateName == freezed
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetStateCodesModel implements _GetStateCodesModel {
  const _$_GetStateCodesModel(@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'state_name') this.stateName);

  factory _$_GetStateCodesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetStateCodesModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'state_name')
  final String? stateName;

  @override
  String toString() {
    return 'GetStateCodesModel(code: $code, stateName: $stateName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetStateCodesModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.stateName, stateName) ||
                const DeepCollectionEquality()
                    .equals(other.stateName, stateName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(stateName);

  @JsonKey(ignore: true)
  @override
  _$GetStateCodesModelCopyWith<_GetStateCodesModel> get copyWith =>
      __$GetStateCodesModelCopyWithImpl<_GetStateCodesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetStateCodesModelToJson(this);
  }
}

abstract class _GetStateCodesModel implements GetStateCodesModel {
  const factory _GetStateCodesModel(@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'state_name') String? stateName) = _$_GetStateCodesModel;

  factory _GetStateCodesModel.fromJson(Map<String, dynamic> json) =
      _$_GetStateCodesModel.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'state_name')
  String? get stateName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetStateCodesModelCopyWith<_GetStateCodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
