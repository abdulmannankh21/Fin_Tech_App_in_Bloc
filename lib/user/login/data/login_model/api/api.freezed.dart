// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Api _$ApiFromJson(Map<String, dynamic> json) {
  return _Api.fromJson(json);
}

/// @nodoc
class _$ApiTearOff {
  const _$ApiTearOff();

  _Api call(
      String? secret, @JsonKey(name: 'api_key') String? apiKey, String? id) {
    return _Api(
      secret,
      apiKey,
      id,
    );
  }

  Api fromJson(Map<String, Object> json) {
    return Api.fromJson(json);
  }
}

/// @nodoc
const $Api = _$ApiTearOff();

/// @nodoc
mixin _$Api {
  String? get secret => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_key')
  String? get apiKey => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCopyWith<Api> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCopyWith<$Res> {
  factory $ApiCopyWith(Api value, $Res Function(Api) then) =
      _$ApiCopyWithImpl<$Res>;
  $Res call(
      {String? secret, @JsonKey(name: 'api_key') String? apiKey, String? id});
}

/// @nodoc
class _$ApiCopyWithImpl<$Res> implements $ApiCopyWith<$Res> {
  _$ApiCopyWithImpl(this._value, this._then);

  final Api _value;
  // ignore: unused_field
  final $Res Function(Api) _then;

  @override
  $Res call({
    Object? secret = freezed,
    Object? apiKey = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      secret: secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ApiCopyWith<$Res> implements $ApiCopyWith<$Res> {
  factory _$ApiCopyWith(_Api value, $Res Function(_Api) then) =
      __$ApiCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? secret, @JsonKey(name: 'api_key') String? apiKey, String? id});
}

/// @nodoc
class __$ApiCopyWithImpl<$Res> extends _$ApiCopyWithImpl<$Res>
    implements _$ApiCopyWith<$Res> {
  __$ApiCopyWithImpl(_Api _value, $Res Function(_Api) _then)
      : super(_value, (v) => _then(v as _Api));

  @override
  _Api get _value => super._value as _Api;

  @override
  $Res call({
    Object? secret = freezed,
    Object? apiKey = freezed,
    Object? id = freezed,
  }) {
    return _then(_Api(
      secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Api implements _Api {
  _$_Api(this.secret, @JsonKey(name: 'api_key') this.apiKey, this.id);

  factory _$_Api.fromJson(Map<String, dynamic> json) => _$$_ApiFromJson(json);

  @override
  final String? secret;
  @override
  @JsonKey(name: 'api_key')
  final String? apiKey;
  @override
  final String? id;

  @override
  String toString() {
    return 'Api(secret: $secret, apiKey: $apiKey, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Api &&
            (identical(other.secret, secret) ||
                const DeepCollectionEquality().equals(other.secret, secret)) &&
            (identical(other.apiKey, apiKey) ||
                const DeepCollectionEquality().equals(other.apiKey, apiKey)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secret) ^
      const DeepCollectionEquality().hash(apiKey) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ApiCopyWith<_Api> get copyWith =>
      __$ApiCopyWithImpl<_Api>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiToJson(this);
  }
}

abstract class _Api implements Api {
  factory _Api(String? secret, @JsonKey(name: 'api_key') String? apiKey,
      String? id) = _$_Api;

  factory _Api.fromJson(Map<String, dynamic> json) = _$_Api.fromJson;

  @override
  String? get secret => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'api_key')
  String? get apiKey => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiCopyWith<_Api> get copyWith => throw _privateConstructorUsedError;
}
