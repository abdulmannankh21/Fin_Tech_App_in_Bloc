// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airtime_countries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AirtimeCountries _$AirtimeCountriesFromJson(Map<String, dynamic> json) {
  return _AirtimeCountries.fromJson(json);
}

/// @nodoc
class _$AirtimeCountriesTearOff {
  const _$AirtimeCountriesTearOff();

  _AirtimeCountries call(int code, String result, List<CountriesModel>? data) {
    return _AirtimeCountries(
      code,
      result,
      data,
    );
  }

  AirtimeCountries fromJson(Map<String, Object> json) {
    return AirtimeCountries.fromJson(json);
  }
}

/// @nodoc
const $AirtimeCountries = _$AirtimeCountriesTearOff();

/// @nodoc
mixin _$AirtimeCountries {
  int get code => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  List<CountriesModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirtimeCountriesCopyWith<AirtimeCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirtimeCountriesCopyWith<$Res> {
  factory $AirtimeCountriesCopyWith(
          AirtimeCountries value, $Res Function(AirtimeCountries) then) =
      _$AirtimeCountriesCopyWithImpl<$Res>;
  $Res call({int code, String result, List<CountriesModel>? data});
}

/// @nodoc
class _$AirtimeCountriesCopyWithImpl<$Res>
    implements $AirtimeCountriesCopyWith<$Res> {
  _$AirtimeCountriesCopyWithImpl(this._value, this._then);

  final AirtimeCountries _value;
  // ignore: unused_field
  final $Res Function(AirtimeCountries) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? result = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
    ));
  }
}

/// @nodoc
abstract class _$AirtimeCountriesCopyWith<$Res>
    implements $AirtimeCountriesCopyWith<$Res> {
  factory _$AirtimeCountriesCopyWith(
          _AirtimeCountries value, $Res Function(_AirtimeCountries) then) =
      __$AirtimeCountriesCopyWithImpl<$Res>;
  @override
  $Res call({int code, String result, List<CountriesModel>? data});
}

/// @nodoc
class __$AirtimeCountriesCopyWithImpl<$Res>
    extends _$AirtimeCountriesCopyWithImpl<$Res>
    implements _$AirtimeCountriesCopyWith<$Res> {
  __$AirtimeCountriesCopyWithImpl(
      _AirtimeCountries _value, $Res Function(_AirtimeCountries) _then)
      : super(_value, (v) => _then(v as _AirtimeCountries));

  @override
  _AirtimeCountries get _value => super._value as _AirtimeCountries;

  @override
  $Res call({
    Object? code = freezed,
    Object? result = freezed,
    Object? data = freezed,
  }) {
    return _then(_AirtimeCountries(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AirtimeCountries implements _AirtimeCountries {
  const _$_AirtimeCountries(this.code, this.result, this.data);

  factory _$_AirtimeCountries.fromJson(Map<String, dynamic> json) =>
      _$$_AirtimeCountriesFromJson(json);

  @override
  final int code;
  @override
  final String result;
  @override
  final List<CountriesModel>? data;

  @override
  String toString() {
    return 'AirtimeCountries(code: $code, result: $result, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AirtimeCountries &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$AirtimeCountriesCopyWith<_AirtimeCountries> get copyWith =>
      __$AirtimeCountriesCopyWithImpl<_AirtimeCountries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirtimeCountriesToJson(this);
  }
}

abstract class _AirtimeCountries implements AirtimeCountries {
  const factory _AirtimeCountries(
          int code, String result, List<CountriesModel>? data) =
      _$_AirtimeCountries;

  factory _AirtimeCountries.fromJson(Map<String, dynamic> json) =
      _$_AirtimeCountries.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<CountriesModel>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AirtimeCountriesCopyWith<_AirtimeCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

CountriesModel _$CountriesModelFromJson(Map<String, dynamic> json) {
  return _CountriesModel.fromJson(json);
}

/// @nodoc
class _$CountriesModelTearOff {
  const _$CountriesModelTearOff();

  _CountriesModel call(
      @JsonKey(name: 'iso_alpha2') String? iso_alpha2,
      @JsonKey(name: 'iso_alpha3') String? iso_alpha3,
      @JsonKey(name: 'currency_code') String? currency_code,
      int id,
      String name,
      String currency_name,
      String currency_sign,
      String phone_code) {
    return _CountriesModel(
      iso_alpha2,
      iso_alpha3,
      currency_code,
      id,
      name,
      currency_name,
      currency_sign,
      phone_code,
    );
  }

  CountriesModel fromJson(Map<String, Object> json) {
    return CountriesModel.fromJson(json);
  }
}

/// @nodoc
const $CountriesModel = _$CountriesModelTearOff();

/// @nodoc
mixin _$CountriesModel {
  @JsonKey(name: 'iso_alpha2')
  String? get iso_alpha2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_alpha3')
  String? get iso_alpha3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_code')
  String? get currency_code => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get currency_name => throw _privateConstructorUsedError;
  String get currency_sign => throw _privateConstructorUsedError;
  String get phone_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesModelCopyWith<CountriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesModelCopyWith<$Res> {
  factory $CountriesModelCopyWith(
          CountriesModel value, $Res Function(CountriesModel) then) =
      _$CountriesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'iso_alpha2') String? iso_alpha2,
      @JsonKey(name: 'iso_alpha3') String? iso_alpha3,
      @JsonKey(name: 'currency_code') String? currency_code,
      int id,
      String name,
      String currency_name,
      String currency_sign,
      String phone_code});
}

/// @nodoc
class _$CountriesModelCopyWithImpl<$Res>
    implements $CountriesModelCopyWith<$Res> {
  _$CountriesModelCopyWithImpl(this._value, this._then);

  final CountriesModel _value;
  // ignore: unused_field
  final $Res Function(CountriesModel) _then;

  @override
  $Res call({
    Object? iso_alpha2 = freezed,
    Object? iso_alpha3 = freezed,
    Object? currency_code = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? currency_name = freezed,
    Object? currency_sign = freezed,
    Object? phone_code = freezed,
  }) {
    return _then(_value.copyWith(
      iso_alpha2: iso_alpha2 == freezed
          ? _value.iso_alpha2
          : iso_alpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso_alpha3: iso_alpha3 == freezed
          ? _value.iso_alpha3
          : iso_alpha3 // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_code: currency_code == freezed
          ? _value.currency_code
          : currency_code // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currency_name: currency_name == freezed
          ? _value.currency_name
          : currency_name // ignore: cast_nullable_to_non_nullable
              as String,
      currency_sign: currency_sign == freezed
          ? _value.currency_sign
          : currency_sign // ignore: cast_nullable_to_non_nullable
              as String,
      phone_code: phone_code == freezed
          ? _value.phone_code
          : phone_code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CountriesModelCopyWith<$Res>
    implements $CountriesModelCopyWith<$Res> {
  factory _$CountriesModelCopyWith(
          _CountriesModel value, $Res Function(_CountriesModel) then) =
      __$CountriesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'iso_alpha2') String? iso_alpha2,
      @JsonKey(name: 'iso_alpha3') String? iso_alpha3,
      @JsonKey(name: 'currency_code') String? currency_code,
      int id,
      String name,
      String currency_name,
      String currency_sign,
      String phone_code});
}

/// @nodoc
class __$CountriesModelCopyWithImpl<$Res>
    extends _$CountriesModelCopyWithImpl<$Res>
    implements _$CountriesModelCopyWith<$Res> {
  __$CountriesModelCopyWithImpl(
      _CountriesModel _value, $Res Function(_CountriesModel) _then)
      : super(_value, (v) => _then(v as _CountriesModel));

  @override
  _CountriesModel get _value => super._value as _CountriesModel;

  @override
  $Res call({
    Object? iso_alpha2 = freezed,
    Object? iso_alpha3 = freezed,
    Object? currency_code = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? currency_name = freezed,
    Object? currency_sign = freezed,
    Object? phone_code = freezed,
  }) {
    return _then(_CountriesModel(
      iso_alpha2 == freezed
          ? _value.iso_alpha2
          : iso_alpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso_alpha3 == freezed
          ? _value.iso_alpha3
          : iso_alpha3 // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_code == freezed
          ? _value.currency_code
          : currency_code // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currency_name == freezed
          ? _value.currency_name
          : currency_name // ignore: cast_nullable_to_non_nullable
              as String,
      currency_sign == freezed
          ? _value.currency_sign
          : currency_sign // ignore: cast_nullable_to_non_nullable
              as String,
      phone_code == freezed
          ? _value.phone_code
          : phone_code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountriesModel implements _CountriesModel {
  const _$_CountriesModel(
      @JsonKey(name: 'iso_alpha2') this.iso_alpha2,
      @JsonKey(name: 'iso_alpha3') this.iso_alpha3,
      @JsonKey(name: 'currency_code') this.currency_code,
      this.id,
      this.name,
      this.currency_name,
      this.currency_sign,
      this.phone_code);

  factory _$_CountriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountriesModelFromJson(json);

  @override
  @JsonKey(name: 'iso_alpha2')
  final String? iso_alpha2;
  @override
  @JsonKey(name: 'iso_alpha3')
  final String? iso_alpha3;
  @override
  @JsonKey(name: 'currency_code')
  final String? currency_code;
  @override
  final int id;
  @override
  final String name;
  @override
  final String currency_name;
  @override
  final String currency_sign;
  @override
  final String phone_code;

  @override
  String toString() {
    return 'CountriesModel(iso_alpha2: $iso_alpha2, iso_alpha3: $iso_alpha3, currency_code: $currency_code, id: $id, name: $name, currency_name: $currency_name, currency_sign: $currency_sign, phone_code: $phone_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesModel &&
            (identical(other.iso_alpha2, iso_alpha2) ||
                const DeepCollectionEquality()
                    .equals(other.iso_alpha2, iso_alpha2)) &&
            (identical(other.iso_alpha3, iso_alpha3) ||
                const DeepCollectionEquality()
                    .equals(other.iso_alpha3, iso_alpha3)) &&
            (identical(other.currency_code, currency_code) ||
                const DeepCollectionEquality()
                    .equals(other.currency_code, currency_code)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.currency_name, currency_name) ||
                const DeepCollectionEquality()
                    .equals(other.currency_name, currency_name)) &&
            (identical(other.currency_sign, currency_sign) ||
                const DeepCollectionEquality()
                    .equals(other.currency_sign, currency_sign)) &&
            (identical(other.phone_code, phone_code) ||
                const DeepCollectionEquality()
                    .equals(other.phone_code, phone_code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iso_alpha2) ^
      const DeepCollectionEquality().hash(iso_alpha3) ^
      const DeepCollectionEquality().hash(currency_code) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(currency_name) ^
      const DeepCollectionEquality().hash(currency_sign) ^
      const DeepCollectionEquality().hash(phone_code);

  @JsonKey(ignore: true)
  @override
  _$CountriesModelCopyWith<_CountriesModel> get copyWith =>
      __$CountriesModelCopyWithImpl<_CountriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountriesModelToJson(this);
  }
}

abstract class _CountriesModel implements CountriesModel {
  const factory _CountriesModel(
      @JsonKey(name: 'iso_alpha2') String? iso_alpha2,
      @JsonKey(name: 'iso_alpha3') String? iso_alpha3,
      @JsonKey(name: 'currency_code') String? currency_code,
      int id,
      String name,
      String currency_name,
      String currency_sign,
      String phone_code) = _$_CountriesModel;

  factory _CountriesModel.fromJson(Map<String, dynamic> json) =
      _$_CountriesModel.fromJson;

  @override
  @JsonKey(name: 'iso_alpha2')
  String? get iso_alpha2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'iso_alpha3')
  String? get iso_alpha3 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency_code')
  String? get currency_code => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get currency_name => throw _privateConstructorUsedError;
  @override
  String get currency_sign => throw _privateConstructorUsedError;
  @override
  String get phone_code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountriesModelCopyWith<_CountriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
