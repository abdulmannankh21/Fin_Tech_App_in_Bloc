// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deposit_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepositMethodModel _$DepositMethodModelFromJson(Map<String, dynamic> json) {
  return _DepositMethodModel.fromJson(json);
}

/// @nodoc
class _$DepositMethodModelTearOff {
  const _$DepositMethodModelTearOff();

  _DepositMethodModel call(int? code, String? status, MethodData? data) {
    return _DepositMethodModel(
      code,
      status,
      data,
    );
  }

  DepositMethodModel fromJson(Map<String, Object> json) {
    return DepositMethodModel.fromJson(json);
  }
}

/// @nodoc
const $DepositMethodModel = _$DepositMethodModelTearOff();

/// @nodoc
mixin _$DepositMethodModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  MethodData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositMethodModelCopyWith<DepositMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositMethodModelCopyWith<$Res> {
  factory $DepositMethodModelCopyWith(
          DepositMethodModel value, $Res Function(DepositMethodModel) then) =
      _$DepositMethodModelCopyWithImpl<$Res>;
  $Res call({int? code, String? status, MethodData? data});

  $MethodDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DepositMethodModelCopyWithImpl<$Res>
    implements $DepositMethodModelCopyWith<$Res> {
  _$DepositMethodModelCopyWithImpl(this._value, this._then);

  final DepositMethodModel _value;
  // ignore: unused_field
  final $Res Function(DepositMethodModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
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
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MethodData?,
    ));
  }

  @override
  $MethodDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MethodDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DepositMethodModelCopyWith<$Res>
    implements $DepositMethodModelCopyWith<$Res> {
  factory _$DepositMethodModelCopyWith(
          _DepositMethodModel value, $Res Function(_DepositMethodModel) then) =
      __$DepositMethodModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? status, MethodData? data});

  @override
  $MethodDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$DepositMethodModelCopyWithImpl<$Res>
    extends _$DepositMethodModelCopyWithImpl<$Res>
    implements _$DepositMethodModelCopyWith<$Res> {
  __$DepositMethodModelCopyWithImpl(
      _DepositMethodModel _value, $Res Function(_DepositMethodModel) _then)
      : super(_value, (v) => _then(v as _DepositMethodModel));

  @override
  _DepositMethodModel get _value => super._value as _DepositMethodModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_DepositMethodModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MethodData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepositMethodModel implements _DepositMethodModel {
  const _$_DepositMethodModel(this.code, this.status, this.data);

  factory _$_DepositMethodModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepositMethodModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final MethodData? data;

  @override
  String toString() {
    return 'DepositMethodModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DepositMethodModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$DepositMethodModelCopyWith<_DepositMethodModel> get copyWith =>
      __$DepositMethodModelCopyWithImpl<_DepositMethodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepositMethodModelToJson(this);
  }
}

abstract class _DepositMethodModel implements DepositMethodModel {
  const factory _DepositMethodModel(
      int? code, String? status, MethodData? data) = _$_DepositMethodModel;

  factory _DepositMethodModel.fromJson(Map<String, dynamic> json) =
      _$_DepositMethodModel.fromJson;

  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  MethodData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DepositMethodModelCopyWith<_DepositMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MethodData _$MethodDataFromJson(Map<String, dynamic> json) {
  return _MethodData.fromJson(json);
}

/// @nodoc
class _$MethodDataTearOff {
  const _$MethodDataTearOff();

  _MethodData call(List<MethodDetails> methods, String? image_path) {
    return _MethodData(
      methods,
      image_path,
    );
  }

  MethodData fromJson(Map<String, Object> json) {
    return MethodData.fromJson(json);
  }
}

/// @nodoc
const $MethodData = _$MethodDataTearOff();

/// @nodoc
mixin _$MethodData {
  List<MethodDetails> get methods => throw _privateConstructorUsedError;
  String? get image_path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodDataCopyWith<MethodData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodDataCopyWith<$Res> {
  factory $MethodDataCopyWith(
          MethodData value, $Res Function(MethodData) then) =
      _$MethodDataCopyWithImpl<$Res>;
  $Res call({List<MethodDetails> methods, String? image_path});
}

/// @nodoc
class _$MethodDataCopyWithImpl<$Res> implements $MethodDataCopyWith<$Res> {
  _$MethodDataCopyWithImpl(this._value, this._then);

  final MethodData _value;
  // ignore: unused_field
  final $Res Function(MethodData) _then;

  @override
  $Res call({
    Object? methods = freezed,
    Object? image_path = freezed,
  }) {
    return _then(_value.copyWith(
      methods: methods == freezed
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MethodDetails>,
      image_path: image_path == freezed
          ? _value.image_path
          : image_path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MethodDataCopyWith<$Res> implements $MethodDataCopyWith<$Res> {
  factory _$MethodDataCopyWith(
          _MethodData value, $Res Function(_MethodData) then) =
      __$MethodDataCopyWithImpl<$Res>;
  @override
  $Res call({List<MethodDetails> methods, String? image_path});
}

/// @nodoc
class __$MethodDataCopyWithImpl<$Res> extends _$MethodDataCopyWithImpl<$Res>
    implements _$MethodDataCopyWith<$Res> {
  __$MethodDataCopyWithImpl(
      _MethodData _value, $Res Function(_MethodData) _then)
      : super(_value, (v) => _then(v as _MethodData));

  @override
  _MethodData get _value => super._value as _MethodData;

  @override
  $Res call({
    Object? methods = freezed,
    Object? image_path = freezed,
  }) {
    return _then(_MethodData(
      methods == freezed
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MethodDetails>,
      image_path == freezed
          ? _value.image_path
          : image_path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MethodData implements _MethodData {
  const _$_MethodData(this.methods, this.image_path);

  factory _$_MethodData.fromJson(Map<String, dynamic> json) =>
      _$$_MethodDataFromJson(json);

  @override
  final List<MethodDetails> methods;
  @override
  final String? image_path;

  @override
  String toString() {
    return 'MethodData(methods: $methods, image_path: $image_path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MethodData &&
            (identical(other.methods, methods) ||
                const DeepCollectionEquality()
                    .equals(other.methods, methods)) &&
            (identical(other.image_path, image_path) ||
                const DeepCollectionEquality()
                    .equals(other.image_path, image_path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(methods) ^
      const DeepCollectionEquality().hash(image_path);

  @JsonKey(ignore: true)
  @override
  _$MethodDataCopyWith<_MethodData> get copyWith =>
      __$MethodDataCopyWithImpl<_MethodData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MethodDataToJson(this);
  }
}

abstract class _MethodData implements MethodData {
  const factory _MethodData(List<MethodDetails> methods, String? image_path) =
      _$_MethodData;

  factory _MethodData.fromJson(Map<String, dynamic> json) =
      _$_MethodData.fromJson;

  @override
  List<MethodDetails> get methods => throw _privateConstructorUsedError;
  @override
  String? get image_path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MethodDataCopyWith<_MethodData> get copyWith =>
      throw _privateConstructorUsedError;
}

MethodDetails _$MethodDetailsFromJson(Map<String, dynamic> json) {
  return _MethodDetails.fromJson(json);
}

/// @nodoc
class _$MethodDetailsTearOff {
  const _$MethodDetailsTearOff();

  _MethodDetails call(
      String? currency,
      String? name,
      String? symbol,
      int? method_code,
      String? gateway_alias,
      String? min_amount,
      String? max_amount,
      String? percent_charge,
      String? fixed_charge,
      String? rate) {
    return _MethodDetails(
      currency,
      name,
      symbol,
      method_code,
      gateway_alias,
      min_amount,
      max_amount,
      percent_charge,
      fixed_charge,
      rate,
    );
  }

  MethodDetails fromJson(Map<String, Object> json) {
    return MethodDetails.fromJson(json);
  }
}

/// @nodoc
const $MethodDetails = _$MethodDetailsTearOff();

/// @nodoc
mixin _$MethodDetails {
  String? get currency => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  int? get method_code => throw _privateConstructorUsedError;
  String? get gateway_alias => throw _privateConstructorUsedError;
  String? get min_amount => throw _privateConstructorUsedError;
  String? get max_amount => throw _privateConstructorUsedError;
  String? get percent_charge => throw _privateConstructorUsedError;
  String? get fixed_charge => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodDetailsCopyWith<MethodDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodDetailsCopyWith<$Res> {
  factory $MethodDetailsCopyWith(
          MethodDetails value, $Res Function(MethodDetails) then) =
      _$MethodDetailsCopyWithImpl<$Res>;
  $Res call(
      {String? currency,
      String? name,
      String? symbol,
      int? method_code,
      String? gateway_alias,
      String? min_amount,
      String? max_amount,
      String? percent_charge,
      String? fixed_charge,
      String? rate});
}

/// @nodoc
class _$MethodDetailsCopyWithImpl<$Res>
    implements $MethodDetailsCopyWith<$Res> {
  _$MethodDetailsCopyWithImpl(this._value, this._then);

  final MethodDetails _value;
  // ignore: unused_field
  final $Res Function(MethodDetails) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? method_code = freezed,
    Object? gateway_alias = freezed,
    Object? min_amount = freezed,
    Object? max_amount = freezed,
    Object? percent_charge = freezed,
    Object? fixed_charge = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      method_code: method_code == freezed
          ? _value.method_code
          : method_code // ignore: cast_nullable_to_non_nullable
              as int?,
      gateway_alias: gateway_alias == freezed
          ? _value.gateway_alias
          : gateway_alias // ignore: cast_nullable_to_non_nullable
              as String?,
      min_amount: min_amount == freezed
          ? _value.min_amount
          : min_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      max_amount: max_amount == freezed
          ? _value.max_amount
          : max_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      percent_charge: percent_charge == freezed
          ? _value.percent_charge
          : percent_charge // ignore: cast_nullable_to_non_nullable
              as String?,
      fixed_charge: fixed_charge == freezed
          ? _value.fixed_charge
          : fixed_charge // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MethodDetailsCopyWith<$Res>
    implements $MethodDetailsCopyWith<$Res> {
  factory _$MethodDetailsCopyWith(
          _MethodDetails value, $Res Function(_MethodDetails) then) =
      __$MethodDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? currency,
      String? name,
      String? symbol,
      int? method_code,
      String? gateway_alias,
      String? min_amount,
      String? max_amount,
      String? percent_charge,
      String? fixed_charge,
      String? rate});
}

/// @nodoc
class __$MethodDetailsCopyWithImpl<$Res>
    extends _$MethodDetailsCopyWithImpl<$Res>
    implements _$MethodDetailsCopyWith<$Res> {
  __$MethodDetailsCopyWithImpl(
      _MethodDetails _value, $Res Function(_MethodDetails) _then)
      : super(_value, (v) => _then(v as _MethodDetails));

  @override
  _MethodDetails get _value => super._value as _MethodDetails;

  @override
  $Res call({
    Object? currency = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? method_code = freezed,
    Object? gateway_alias = freezed,
    Object? min_amount = freezed,
    Object? max_amount = freezed,
    Object? percent_charge = freezed,
    Object? fixed_charge = freezed,
    Object? rate = freezed,
  }) {
    return _then(_MethodDetails(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      method_code == freezed
          ? _value.method_code
          : method_code // ignore: cast_nullable_to_non_nullable
              as int?,
      gateway_alias == freezed
          ? _value.gateway_alias
          : gateway_alias // ignore: cast_nullable_to_non_nullable
              as String?,
      min_amount == freezed
          ? _value.min_amount
          : min_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      max_amount == freezed
          ? _value.max_amount
          : max_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      percent_charge == freezed
          ? _value.percent_charge
          : percent_charge // ignore: cast_nullable_to_non_nullable
              as String?,
      fixed_charge == freezed
          ? _value.fixed_charge
          : fixed_charge // ignore: cast_nullable_to_non_nullable
              as String?,
      rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MethodDetails implements _MethodDetails {
  const _$_MethodDetails(
      this.currency,
      this.name,
      this.symbol,
      this.method_code,
      this.gateway_alias,
      this.min_amount,
      this.max_amount,
      this.percent_charge,
      this.fixed_charge,
      this.rate);

  factory _$_MethodDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MethodDetailsFromJson(json);

  @override
  final String? currency;
  @override
  final String? name;
  @override
  final String? symbol;
  @override
  final int? method_code;
  @override
  final String? gateway_alias;
  @override
  final String? min_amount;
  @override
  final String? max_amount;
  @override
  final String? percent_charge;
  @override
  final String? fixed_charge;
  @override
  final String? rate;

  @override
  String toString() {
    return 'MethodDetails(currency: $currency, name: $name, symbol: $symbol, method_code: $method_code, gateway_alias: $gateway_alias, min_amount: $min_amount, max_amount: $max_amount, percent_charge: $percent_charge, fixed_charge: $fixed_charge, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MethodDetails &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.method_code, method_code) ||
                const DeepCollectionEquality()
                    .equals(other.method_code, method_code)) &&
            (identical(other.gateway_alias, gateway_alias) ||
                const DeepCollectionEquality()
                    .equals(other.gateway_alias, gateway_alias)) &&
            (identical(other.min_amount, min_amount) ||
                const DeepCollectionEquality()
                    .equals(other.min_amount, min_amount)) &&
            (identical(other.max_amount, max_amount) ||
                const DeepCollectionEquality()
                    .equals(other.max_amount, max_amount)) &&
            (identical(other.percent_charge, percent_charge) ||
                const DeepCollectionEquality()
                    .equals(other.percent_charge, percent_charge)) &&
            (identical(other.fixed_charge, fixed_charge) ||
                const DeepCollectionEquality()
                    .equals(other.fixed_charge, fixed_charge)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(method_code) ^
      const DeepCollectionEquality().hash(gateway_alias) ^
      const DeepCollectionEquality().hash(min_amount) ^
      const DeepCollectionEquality().hash(max_amount) ^
      const DeepCollectionEquality().hash(percent_charge) ^
      const DeepCollectionEquality().hash(fixed_charge) ^
      const DeepCollectionEquality().hash(rate);

  @JsonKey(ignore: true)
  @override
  _$MethodDetailsCopyWith<_MethodDetails> get copyWith =>
      __$MethodDetailsCopyWithImpl<_MethodDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MethodDetailsToJson(this);
  }
}

abstract class _MethodDetails implements MethodDetails {
  const factory _MethodDetails(
      String? currency,
      String? name,
      String? symbol,
      int? method_code,
      String? gateway_alias,
      String? min_amount,
      String? max_amount,
      String? percent_charge,
      String? fixed_charge,
      String? rate) = _$_MethodDetails;

  factory _MethodDetails.fromJson(Map<String, dynamic> json) =
      _$_MethodDetails.fromJson;

  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get symbol => throw _privateConstructorUsedError;
  @override
  int? get method_code => throw _privateConstructorUsedError;
  @override
  String? get gateway_alias => throw _privateConstructorUsedError;
  @override
  String? get min_amount => throw _privateConstructorUsedError;
  @override
  String? get max_amount => throw _privateConstructorUsedError;
  @override
  String? get percent_charge => throw _privateConstructorUsedError;
  @override
  String? get fixed_charge => throw _privateConstructorUsedError;
  @override
  String? get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MethodDetailsCopyWith<_MethodDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
