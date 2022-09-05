// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_countries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCountriesModel _$GetCountriesModelFromJson(Map<String, dynamic> json) {
  return _GetCountriesModel.fromJson(json);
}

/// @nodoc
class _$GetCountriesModelTearOff {
  const _$GetCountriesModelTearOff();

  _GetCountriesModel call(
      @JsonKey(name: 'iso_alpha2') String? isoAlpha2,
      @JsonKey(name: 'iso_alpha3') String? isoAlpha3,
      @JsonKey(name: 'country_name') String? countryName) {
    return _GetCountriesModel(
      isoAlpha2,
      isoAlpha3,
      countryName,
    );
  }

  GetCountriesModel fromJson(Map<String, Object> json) {
    return GetCountriesModel.fromJson(json);
  }
}

/// @nodoc
const $GetCountriesModel = _$GetCountriesModelTearOff();

/// @nodoc
mixin _$GetCountriesModel {
  @JsonKey(name: 'iso_alpha2')
  String? get isoAlpha2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_alpha3')
  String? get isoAlpha3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_name')
  String? get countryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCountriesModelCopyWith<GetCountriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCountriesModelCopyWith<$Res> {
  factory $GetCountriesModelCopyWith(
          GetCountriesModel value, $Res Function(GetCountriesModel) then) =
      _$GetCountriesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'iso_alpha2') String? isoAlpha2,
      @JsonKey(name: 'iso_alpha3') String? isoAlpha3,
      @JsonKey(name: 'country_name') String? countryName});
}

/// @nodoc
class _$GetCountriesModelCopyWithImpl<$Res>
    implements $GetCountriesModelCopyWith<$Res> {
  _$GetCountriesModelCopyWithImpl(this._value, this._then);

  final GetCountriesModel _value;
  // ignore: unused_field
  final $Res Function(GetCountriesModel) _then;

  @override
  $Res call({
    Object? isoAlpha2 = freezed,
    Object? isoAlpha3 = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      isoAlpha2: isoAlpha2 == freezed
          ? _value.isoAlpha2
          : isoAlpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      isoAlpha3: isoAlpha3 == freezed
          ? _value.isoAlpha3
          : isoAlpha3 // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetCountriesModelCopyWith<$Res>
    implements $GetCountriesModelCopyWith<$Res> {
  factory _$GetCountriesModelCopyWith(
          _GetCountriesModel value, $Res Function(_GetCountriesModel) then) =
      __$GetCountriesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'iso_alpha2') String? isoAlpha2,
      @JsonKey(name: 'iso_alpha3') String? isoAlpha3,
      @JsonKey(name: 'country_name') String? countryName});
}

/// @nodoc
class __$GetCountriesModelCopyWithImpl<$Res>
    extends _$GetCountriesModelCopyWithImpl<$Res>
    implements _$GetCountriesModelCopyWith<$Res> {
  __$GetCountriesModelCopyWithImpl(
      _GetCountriesModel _value, $Res Function(_GetCountriesModel) _then)
      : super(_value, (v) => _then(v as _GetCountriesModel));

  @override
  _GetCountriesModel get _value => super._value as _GetCountriesModel;

  @override
  $Res call({
    Object? isoAlpha2 = freezed,
    Object? isoAlpha3 = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_GetCountriesModel(
      isoAlpha2 == freezed
          ? _value.isoAlpha2
          : isoAlpha2 // ignore: cast_nullable_to_non_nullable
              as String?,
      isoAlpha3 == freezed
          ? _value.isoAlpha3
          : isoAlpha3 // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCountriesModel implements _GetCountriesModel {
  const _$_GetCountriesModel(
      @JsonKey(name: 'iso_alpha2') this.isoAlpha2,
      @JsonKey(name: 'iso_alpha3') this.isoAlpha3,
      @JsonKey(name: 'country_name') this.countryName);

  factory _$_GetCountriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetCountriesModelFromJson(json);

  @override
  @JsonKey(name: 'iso_alpha2')
  final String? isoAlpha2;
  @override
  @JsonKey(name: 'iso_alpha3')
  final String? isoAlpha3;
  @override
  @JsonKey(name: 'country_name')
  final String? countryName;

  @override
  String toString() {
    return 'GetCountriesModel(isoAlpha2: $isoAlpha2, isoAlpha3: $isoAlpha3, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCountriesModel &&
            (identical(other.isoAlpha2, isoAlpha2) ||
                const DeepCollectionEquality()
                    .equals(other.isoAlpha2, isoAlpha2)) &&
            (identical(other.isoAlpha3, isoAlpha3) ||
                const DeepCollectionEquality()
                    .equals(other.isoAlpha3, isoAlpha3)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isoAlpha2) ^
      const DeepCollectionEquality().hash(isoAlpha3) ^
      const DeepCollectionEquality().hash(countryName);

  @JsonKey(ignore: true)
  @override
  _$GetCountriesModelCopyWith<_GetCountriesModel> get copyWith =>
      __$GetCountriesModelCopyWithImpl<_GetCountriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCountriesModelToJson(this);
  }
}

abstract class _GetCountriesModel implements GetCountriesModel {
  const factory _GetCountriesModel(
          @JsonKey(name: 'iso_alpha2') String? isoAlpha2,
          @JsonKey(name: 'iso_alpha3') String? isoAlpha3,
          @JsonKey(name: 'country_name') String? countryName) =
      _$_GetCountriesModel;

  factory _GetCountriesModel.fromJson(Map<String, dynamic> json) =
      _$_GetCountriesModel.fromJson;

  @override
  @JsonKey(name: 'iso_alpha2')
  String? get isoAlpha2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'iso_alpha3')
  String? get isoAlpha3 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_name')
  String? get countryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCountriesModelCopyWith<_GetCountriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
