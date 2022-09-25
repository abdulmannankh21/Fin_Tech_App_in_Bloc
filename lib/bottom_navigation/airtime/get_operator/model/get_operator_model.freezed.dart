// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_operator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOperatorModel _$GetOperatorModelFromJson(Map<String, dynamic> json) {
  return _OperatorModel.fromJson(json);
}

/// @nodoc
class _$GetOperatorModelTearOff {
  const _$GetOperatorModelTearOff();

  _OperatorModel call(
      String? status, String? message, int? code, OperatorData data) {
    return _OperatorModel(
      status,
      message,
      code,
      data,
    );
  }

  GetOperatorModel fromJson(Map<String, Object> json) {
    return GetOperatorModel.fromJson(json);
  }
}

/// @nodoc
const $GetOperatorModel = _$GetOperatorModelTearOff();

/// @nodoc
mixin _$GetOperatorModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  OperatorData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOperatorModelCopyWith<GetOperatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOperatorModelCopyWith<$Res> {
  factory $GetOperatorModelCopyWith(
          GetOperatorModel value, $Res Function(GetOperatorModel) then) =
      _$GetOperatorModelCopyWithImpl<$Res>;
  $Res call({String? status, String? message, int? code, OperatorData data});

  $OperatorDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetOperatorModelCopyWithImpl<$Res>
    implements $GetOperatorModelCopyWith<$Res> {
  _$GetOperatorModelCopyWithImpl(this._value, this._then);

  final GetOperatorModel _value;
  // ignore: unused_field
  final $Res Function(GetOperatorModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OperatorData,
    ));
  }

  @override
  $OperatorDataCopyWith<$Res> get data {
    return $OperatorDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$OperatorModelCopyWith<$Res>
    implements $GetOperatorModelCopyWith<$Res> {
  factory _$OperatorModelCopyWith(
          _OperatorModel value, $Res Function(_OperatorModel) then) =
      __$OperatorModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, int? code, OperatorData data});

  @override
  $OperatorDataCopyWith<$Res> get data;
}

/// @nodoc
class __$OperatorModelCopyWithImpl<$Res>
    extends _$GetOperatorModelCopyWithImpl<$Res>
    implements _$OperatorModelCopyWith<$Res> {
  __$OperatorModelCopyWithImpl(
      _OperatorModel _value, $Res Function(_OperatorModel) _then)
      : super(_value, (v) => _then(v as _OperatorModel));

  @override
  _OperatorModel get _value => super._value as _OperatorModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_OperatorModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OperatorData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperatorModel implements _OperatorModel {
  const _$_OperatorModel(this.status, this.message, this.code, this.data);

  factory _$_OperatorModel.fromJson(Map<String, dynamic> json) =>
      _$$_OperatorModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final OperatorData data;

  @override
  String toString() {
    return 'GetOperatorModel(status: $status, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OperatorModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OperatorModelCopyWith<_OperatorModel> get copyWith =>
      __$OperatorModelCopyWithImpl<_OperatorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperatorModelToJson(this);
  }
}

abstract class _OperatorModel implements GetOperatorModel {
  const factory _OperatorModel(
          String? status, String? message, int? code, OperatorData data) =
      _$_OperatorModel;

  factory _OperatorModel.fromJson(Map<String, dynamic> json) =
      _$_OperatorModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  OperatorData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OperatorModelCopyWith<_OperatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OperatorData _$OperatorDataFromJson(Map<String, dynamic> json) {
  return _OperatorData.fromJson(json);
}

/// @nodoc
class _$OperatorDataTearOff {
  const _$OperatorDataTearOff();

  _OperatorData call(Response response, String? country) {
    return _OperatorData(
      response,
      country,
    );
  }

  OperatorData fromJson(Map<String, Object> json) {
    return OperatorData.fromJson(json);
  }
}

/// @nodoc
const $OperatorData = _$OperatorDataTearOff();

/// @nodoc
mixin _$OperatorData {
  Response get response => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperatorDataCopyWith<OperatorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperatorDataCopyWith<$Res> {
  factory $OperatorDataCopyWith(
          OperatorData value, $Res Function(OperatorData) then) =
      _$OperatorDataCopyWithImpl<$Res>;
  $Res call({Response response, String? country});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$OperatorDataCopyWithImpl<$Res> implements $OperatorDataCopyWith<$Res> {
  _$OperatorDataCopyWithImpl(this._value, this._then);

  final OperatorData _value;
  // ignore: unused_field
  final $Res Function(OperatorData) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$OperatorDataCopyWith<$Res>
    implements $OperatorDataCopyWith<$Res> {
  factory _$OperatorDataCopyWith(
          _OperatorData value, $Res Function(_OperatorData) then) =
      __$OperatorDataCopyWithImpl<$Res>;
  @override
  $Res call({Response response, String? country});

  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$OperatorDataCopyWithImpl<$Res> extends _$OperatorDataCopyWithImpl<$Res>
    implements _$OperatorDataCopyWith<$Res> {
  __$OperatorDataCopyWithImpl(
      _OperatorData _value, $Res Function(_OperatorData) _then)
      : super(_value, (v) => _then(v as _OperatorData));

  @override
  _OperatorData get _value => super._value as _OperatorData;

  @override
  $Res call({
    Object? response = freezed,
    Object? country = freezed,
  }) {
    return _then(_OperatorData(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperatorData implements _OperatorData {
  const _$_OperatorData(this.response, this.country);

  factory _$_OperatorData.fromJson(Map<String, dynamic> json) =>
      _$$_OperatorDataFromJson(json);

  @override
  final Response response;
  @override
  final String? country;

  @override
  String toString() {
    return 'OperatorData(response: $response, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OperatorData &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$OperatorDataCopyWith<_OperatorData> get copyWith =>
      __$OperatorDataCopyWithImpl<_OperatorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperatorDataToJson(this);
  }
}

abstract class _OperatorData implements OperatorData {
  const factory _OperatorData(Response response, String? country) =
      _$_OperatorData;

  factory _OperatorData.fromJson(Map<String, dynamic> json) =
      _$_OperatorData.fromJson;

  @override
  Response get response => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OperatorDataCopyWith<_OperatorData> get copyWith =>
      throw _privateConstructorUsedError;
}
