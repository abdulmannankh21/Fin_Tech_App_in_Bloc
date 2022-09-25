// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airtime_operator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperatorModel _$OperatorModelFromJson(Map<String, dynamic> json) {
  return _OperatorModel.fromJson(json);
}

/// @nodoc
class _$OperatorModelTearOff {
  const _$OperatorModelTearOff();

  _OperatorModel call(
      String? status, String? message, int? code, Data data, String? country) {
    return _OperatorModel(
      status,
      message,
      code,
      data,
      country,
    );
  }

  OperatorModel fromJson(Map<String, Object> json) {
    return OperatorModel.fromJson(json);
  }
}

/// @nodoc
const $OperatorModel = _$OperatorModelTearOff();

/// @nodoc
mixin _$OperatorModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperatorModelCopyWith<OperatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperatorModelCopyWith<$Res> {
  factory $OperatorModelCopyWith(
          OperatorModel value, $Res Function(OperatorModel) then) =
      _$OperatorModelCopyWithImpl<$Res>;
  $Res call(
      {String? status, String? message, int? code, Data data, String? country});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$OperatorModelCopyWithImpl<$Res>
    implements $OperatorModelCopyWith<$Res> {
  _$OperatorModelCopyWithImpl(this._value, this._then);

  final OperatorModel _value;
  // ignore: unused_field
  final $Res Function(OperatorModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
    Object? country = freezed,
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
              as Data,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$OperatorModelCopyWith<$Res>
    implements $OperatorModelCopyWith<$Res> {
  factory _$OperatorModelCopyWith(
          _OperatorModel value, $Res Function(_OperatorModel) then) =
      __$OperatorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status, String? message, int? code, Data data, String? country});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$OperatorModelCopyWithImpl<$Res>
    extends _$OperatorModelCopyWithImpl<$Res>
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
    Object? country = freezed,
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
              as Data,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperatorModel implements _OperatorModel {
  const _$_OperatorModel(
      this.status, this.message, this.code, this.data, this.country);

  factory _$_OperatorModel.fromJson(Map<String, dynamic> json) =>
      _$$_OperatorModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final Data data;
  @override
  final String? country;

  @override
  String toString() {
    return 'OperatorModel(status: $status, message: $message, code: $code, data: $data, country: $country)';
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
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$OperatorModelCopyWith<_OperatorModel> get copyWith =>
      __$OperatorModelCopyWithImpl<_OperatorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperatorModelToJson(this);
  }
}

abstract class _OperatorModel implements OperatorModel {
  const factory _OperatorModel(String? status, String? message, int? code,
      Data data, String? country) = _$_OperatorModel;

  factory _OperatorModel.fromJson(Map<String, dynamic> json) =
      _$_OperatorModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OperatorModelCopyWith<_OperatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(List<Response> response, String? country) {
    return _Data(
      response,
      country,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  List<Response> get response => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Response> response, String? country});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Response> response, String? country});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? response = freezed,
    Object? country = freezed,
  }) {
    return _then(_Data(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(this.response, this.country);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<Response> response;
  @override
  final String? country;

  @override
  String toString() {
    return 'Data(response: $response, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
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
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(List<Response> response, String? country) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Response> get response => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  _Response call(
      int? id,
      int? operatorId,
      String? name,
      bool? bundle,
      bool? data,
      bool? pin,
      bool? supportsLocalAmounts,
      bool? supportsGeographicalRechargePlans,
      String? denominationType,
      String? senderCurrencyCode,
      String? senderCurrencySymbol,
      String? destinationCurrencyCode,
      String? destinationCurrencySymbol,
      double? commission,
      double? internationalDiscount,
      double? mostPopularAmount,
      double? localDiscount,
      double? minAmount,
      double? mostPopularLocalAmount,
      double? maxAmount,
      double? localMinAmount,
      double? localMaxAmount,
      List<String> logoUrls,
      List<double> fixedAmounts,
      List<double> suggestedAmounts,
      List<double> localFixedAmounts,
      dynamic fixedAmountsDescriptions) {
    return _Response(
      id,
      operatorId,
      name,
      bundle,
      data,
      pin,
      supportsLocalAmounts,
      supportsGeographicalRechargePlans,
      denominationType,
      senderCurrencyCode,
      senderCurrencySymbol,
      destinationCurrencyCode,
      destinationCurrencySymbol,
      commission,
      internationalDiscount,
      mostPopularAmount,
      localDiscount,
      minAmount,
      mostPopularLocalAmount,
      maxAmount,
      localMinAmount,
      localMaxAmount,
      logoUrls,
      fixedAmounts,
      suggestedAmounts,
      localFixedAmounts,
      fixedAmountsDescriptions,
    );
  }

  Response fromJson(Map<String, Object> json) {
    return Response.fromJson(json);
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response {
  int? get id => throw _privateConstructorUsedError;
  int? get operatorId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get bundle => throw _privateConstructorUsedError;
  bool? get data => throw _privateConstructorUsedError;
  bool? get pin => throw _privateConstructorUsedError;
  bool? get supportsLocalAmounts => throw _privateConstructorUsedError;
  bool? get supportsGeographicalRechargePlans =>
      throw _privateConstructorUsedError;
  String? get denominationType => throw _privateConstructorUsedError;
  String? get senderCurrencyCode => throw _privateConstructorUsedError;
  String? get senderCurrencySymbol => throw _privateConstructorUsedError;
  String? get destinationCurrencyCode => throw _privateConstructorUsedError;
  String? get destinationCurrencySymbol => throw _privateConstructorUsedError;
  double? get commission => throw _privateConstructorUsedError;
  double? get internationalDiscount => throw _privateConstructorUsedError;
  double? get mostPopularAmount => throw _privateConstructorUsedError;
  double? get localDiscount => throw _privateConstructorUsedError;
  double? get minAmount => throw _privateConstructorUsedError;
  double? get mostPopularLocalAmount => throw _privateConstructorUsedError;
  double? get maxAmount => throw _privateConstructorUsedError;
  double? get localMinAmount => throw _privateConstructorUsedError;
  double? get localMaxAmount => throw _privateConstructorUsedError;
  List<String> get logoUrls => throw _privateConstructorUsedError;
  List<double> get fixedAmounts => throw _privateConstructorUsedError;
  List<double> get suggestedAmounts => throw _privateConstructorUsedError;
  List<double> get localFixedAmounts => throw _privateConstructorUsedError;
  dynamic get fixedAmountsDescriptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? operatorId,
      String? name,
      bool? bundle,
      bool? data,
      bool? pin,
      bool? supportsLocalAmounts,
      bool? supportsGeographicalRechargePlans,
      String? denominationType,
      String? senderCurrencyCode,
      String? senderCurrencySymbol,
      String? destinationCurrencyCode,
      String? destinationCurrencySymbol,
      double? commission,
      double? internationalDiscount,
      double? mostPopularAmount,
      double? localDiscount,
      double? minAmount,
      double? mostPopularLocalAmount,
      double? maxAmount,
      double? localMinAmount,
      double? localMaxAmount,
      List<String> logoUrls,
      List<double> fixedAmounts,
      List<double> suggestedAmounts,
      List<double> localFixedAmounts,
      dynamic fixedAmountsDescriptions});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? operatorId = freezed,
    Object? name = freezed,
    Object? bundle = freezed,
    Object? data = freezed,
    Object? pin = freezed,
    Object? supportsLocalAmounts = freezed,
    Object? supportsGeographicalRechargePlans = freezed,
    Object? denominationType = freezed,
    Object? senderCurrencyCode = freezed,
    Object? senderCurrencySymbol = freezed,
    Object? destinationCurrencyCode = freezed,
    Object? destinationCurrencySymbol = freezed,
    Object? commission = freezed,
    Object? internationalDiscount = freezed,
    Object? mostPopularAmount = freezed,
    Object? localDiscount = freezed,
    Object? minAmount = freezed,
    Object? mostPopularLocalAmount = freezed,
    Object? maxAmount = freezed,
    Object? localMinAmount = freezed,
    Object? localMaxAmount = freezed,
    Object? logoUrls = freezed,
    Object? fixedAmounts = freezed,
    Object? suggestedAmounts = freezed,
    Object? localFixedAmounts = freezed,
    Object? fixedAmountsDescriptions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorId: operatorId == freezed
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsLocalAmounts: supportsLocalAmounts == freezed
          ? _value.supportsLocalAmounts
          : supportsLocalAmounts // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsGeographicalRechargePlans: supportsGeographicalRechargePlans ==
              freezed
          ? _value.supportsGeographicalRechargePlans
          : supportsGeographicalRechargePlans // ignore: cast_nullable_to_non_nullable
              as bool?,
      denominationType: denominationType == freezed
          ? _value.denominationType
          : denominationType // ignore: cast_nullable_to_non_nullable
              as String?,
      senderCurrencyCode: senderCurrencyCode == freezed
          ? _value.senderCurrencyCode
          : senderCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      senderCurrencySymbol: senderCurrencySymbol == freezed
          ? _value.senderCurrencySymbol
          : senderCurrencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCurrencyCode: destinationCurrencyCode == freezed
          ? _value.destinationCurrencyCode
          : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCurrencySymbol: destinationCurrencySymbol == freezed
          ? _value.destinationCurrencySymbol
          : destinationCurrencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      commission: commission == freezed
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double?,
      internationalDiscount: internationalDiscount == freezed
          ? _value.internationalDiscount
          : internationalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      mostPopularAmount: mostPopularAmount == freezed
          ? _value.mostPopularAmount
          : mostPopularAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      localDiscount: localDiscount == freezed
          ? _value.localDiscount
          : localDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      minAmount: minAmount == freezed
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      mostPopularLocalAmount: mostPopularLocalAmount == freezed
          ? _value.mostPopularLocalAmount
          : mostPopularLocalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAmount: maxAmount == freezed
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      localMinAmount: localMinAmount == freezed
          ? _value.localMinAmount
          : localMinAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      localMaxAmount: localMaxAmount == freezed
          ? _value.localMaxAmount
          : localMaxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      logoUrls: logoUrls == freezed
          ? _value.logoUrls
          : logoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fixedAmounts: fixedAmounts == freezed
          ? _value.fixedAmounts
          : fixedAmounts // ignore: cast_nullable_to_non_nullable
              as List<double>,
      suggestedAmounts: suggestedAmounts == freezed
          ? _value.suggestedAmounts
          : suggestedAmounts // ignore: cast_nullable_to_non_nullable
              as List<double>,
      localFixedAmounts: localFixedAmounts == freezed
          ? _value.localFixedAmounts
          : localFixedAmounts // ignore: cast_nullable_to_non_nullable
              as List<double>,
      fixedAmountsDescriptions: fixedAmountsDescriptions == freezed
          ? _value.fixedAmountsDescriptions
          : fixedAmountsDescriptions // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? operatorId,
      String? name,
      bool? bundle,
      bool? data,
      bool? pin,
      bool? supportsLocalAmounts,
      bool? supportsGeographicalRechargePlans,
      String? denominationType,
      String? senderCurrencyCode,
      String? senderCurrencySymbol,
      String? destinationCurrencyCode,
      String? destinationCurrencySymbol,
      double? commission,
      double? internationalDiscount,
      double? mostPopularAmount,
      double? localDiscount,
      double? minAmount,
      double? mostPopularLocalAmount,
      double? maxAmount,
      double? localMinAmount,
      double? localMaxAmount,
      List<String> logoUrls,
      List<double> fixedAmounts,
      List<double> suggestedAmounts,
      List<double> localFixedAmounts,
      dynamic fixedAmountsDescriptions});
}

/// @nodoc
class __$ResponseCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(_Response _value, $Res Function(_Response) _then)
      : super(_value, (v) => _then(v as _Response));

  @override
  _Response get _value => super._value as _Response;

  @override
  $Res call({
    Object? id = freezed,
    Object? operatorId = freezed,
    Object? name = freezed,
    Object? bundle = freezed,
    Object? data = freezed,
    Object? pin = freezed,
    Object? supportsLocalAmounts = freezed,
    Object? supportsGeographicalRechargePlans = freezed,
    Object? denominationType = freezed,
    Object? senderCurrencyCode = freezed,
    Object? senderCurrencySymbol = freezed,
    Object? destinationCurrencyCode = freezed,
    Object? destinationCurrencySymbol = freezed,
    Object? commission = freezed,
    Object? internationalDiscount = freezed,
    Object? mostPopularAmount = freezed,
    Object? localDiscount = freezed,
    Object? minAmount = freezed,
    Object? mostPopularLocalAmount = freezed,
    Object? maxAmount = freezed,
    Object? localMinAmount = freezed,
    Object? localMaxAmount = freezed,
    Object? logoUrls = freezed,
    Object? fixedAmounts = freezed,
    Object? suggestedAmounts = freezed,
    Object? localFixedAmounts = freezed,
    Object? fixedAmountsDescriptions = freezed,
  }) {
    return _then(_Response(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorId == freezed
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as bool?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool?,
      pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsLocalAmounts == freezed
          ? _value.supportsLocalAmounts
          : supportsLocalAmounts // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsGeographicalRechargePlans == freezed
          ? _value.supportsGeographicalRechargePlans
          : supportsGeographicalRechargePlans // ignore: cast_nullable_to_non_nullable
              as bool?,
      denominationType == freezed
          ? _value.denominationType
          : denominationType // ignore: cast_nullable_to_non_nullable
              as String?,
      senderCurrencyCode == freezed
          ? _value.senderCurrencyCode
          : senderCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      senderCurrencySymbol == freezed
          ? _value.senderCurrencySymbol
          : senderCurrencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCurrencyCode == freezed
          ? _value.destinationCurrencyCode
          : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCurrencySymbol == freezed
          ? _value.destinationCurrencySymbol
          : destinationCurrencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      commission == freezed
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double?,
      internationalDiscount == freezed
          ? _value.internationalDiscount
          : internationalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      mostPopularAmount == freezed
          ? _value.mostPopularAmount
          : mostPopularAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      localDiscount == freezed
          ? _value.localDiscount
          : localDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      minAmount == freezed
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      mostPopularLocalAmount == freezed
          ? _value.mostPopularLocalAmount
          : mostPopularLocalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAmount == freezed
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      localMinAmount == freezed
          ? _value.localMinAmount
          : localMinAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      localMaxAmount == freezed
          ? _value.localMaxAmount
          : localMaxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      logoUrls == freezed
          ? _value.logoUrls
          : logoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fixedAmounts == freezed
          ? _value.fixedAmounts
          : fixedAmounts // ignore: cast_nullable_to_non_nullable
              as List<double>,
      suggestedAmounts == freezed
          ? _value.suggestedAmounts
          : suggestedAmounts // ignore: cast_nullable_to_non_nullable
              as List<double>,
      localFixedAmounts == freezed
          ? _value.localFixedAmounts
          : localFixedAmounts // ignore: cast_nullable_to_non_nullable
              as List<double>,
      fixedAmountsDescriptions == freezed
          ? _value.fixedAmountsDescriptions
          : fixedAmountsDescriptions // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Response implements _Response {
  const _$_Response(
      this.id,
      this.operatorId,
      this.name,
      this.bundle,
      this.data,
      this.pin,
      this.supportsLocalAmounts,
      this.supportsGeographicalRechargePlans,
      this.denominationType,
      this.senderCurrencyCode,
      this.senderCurrencySymbol,
      this.destinationCurrencyCode,
      this.destinationCurrencySymbol,
      this.commission,
      this.internationalDiscount,
      this.mostPopularAmount,
      this.localDiscount,
      this.minAmount,
      this.mostPopularLocalAmount,
      this.maxAmount,
      this.localMinAmount,
      this.localMaxAmount,
      this.logoUrls,
      this.fixedAmounts,
      this.suggestedAmounts,
      this.localFixedAmounts,
      this.fixedAmountsDescriptions);

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final int? id;
  @override
  final int? operatorId;
  @override
  final String? name;
  @override
  final bool? bundle;
  @override
  final bool? data;
  @override
  final bool? pin;
  @override
  final bool? supportsLocalAmounts;
  @override
  final bool? supportsGeographicalRechargePlans;
  @override
  final String? denominationType;
  @override
  final String? senderCurrencyCode;
  @override
  final String? senderCurrencySymbol;
  @override
  final String? destinationCurrencyCode;
  @override
  final String? destinationCurrencySymbol;
  @override
  final double? commission;
  @override
  final double? internationalDiscount;
  @override
  final double? mostPopularAmount;
  @override
  final double? localDiscount;
  @override
  final double? minAmount;
  @override
  final double? mostPopularLocalAmount;
  @override
  final double? maxAmount;
  @override
  final double? localMinAmount;
  @override
  final double? localMaxAmount;
  @override
  final List<String> logoUrls;
  @override
  final List<double> fixedAmounts;
  @override
  final List<double> suggestedAmounts;
  @override
  final List<double> localFixedAmounts;
  @override
  final dynamic fixedAmountsDescriptions;

  @override
  String toString() {
    return 'Response(id: $id, operatorId: $operatorId, name: $name, bundle: $bundle, data: $data, pin: $pin, supportsLocalAmounts: $supportsLocalAmounts, supportsGeographicalRechargePlans: $supportsGeographicalRechargePlans, denominationType: $denominationType, senderCurrencyCode: $senderCurrencyCode, senderCurrencySymbol: $senderCurrencySymbol, destinationCurrencyCode: $destinationCurrencyCode, destinationCurrencySymbol: $destinationCurrencySymbol, commission: $commission, internationalDiscount: $internationalDiscount, mostPopularAmount: $mostPopularAmount, localDiscount: $localDiscount, minAmount: $minAmount, mostPopularLocalAmount: $mostPopularLocalAmount, maxAmount: $maxAmount, localMinAmount: $localMinAmount, localMaxAmount: $localMaxAmount, logoUrls: $logoUrls, fixedAmounts: $fixedAmounts, suggestedAmounts: $suggestedAmounts, localFixedAmounts: $localFixedAmounts, fixedAmountsDescriptions: $fixedAmountsDescriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Response &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.operatorId, operatorId) ||
                const DeepCollectionEquality()
                    .equals(other.operatorId, operatorId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.bundle, bundle) ||
                const DeepCollectionEquality().equals(other.bundle, bundle)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.supportsLocalAmounts, supportsLocalAmounts) ||
                const DeepCollectionEquality().equals(
                    other.supportsLocalAmounts, supportsLocalAmounts)) &&
            (identical(other.supportsGeographicalRechargePlans, supportsGeographicalRechargePlans) ||
                const DeepCollectionEquality().equals(
                    other.supportsGeographicalRechargePlans,
                    supportsGeographicalRechargePlans)) &&
            (identical(other.denominationType, denominationType) ||
                const DeepCollectionEquality()
                    .equals(other.denominationType, denominationType)) &&
            (identical(other.senderCurrencyCode, senderCurrencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.senderCurrencyCode, senderCurrencyCode)) &&
            (identical(other.senderCurrencySymbol, senderCurrencySymbol) ||
                const DeepCollectionEquality().equals(
                    other.senderCurrencySymbol, senderCurrencySymbol)) &&
            (identical(other.destinationCurrencyCode, destinationCurrencyCode) ||
                const DeepCollectionEquality().equals(
                    other.destinationCurrencyCode, destinationCurrencyCode)) &&
            (identical(other.destinationCurrencySymbol, destinationCurrencySymbol) ||
                const DeepCollectionEquality().equals(
                    other.destinationCurrencySymbol,
                    destinationCurrencySymbol)) &&
            (identical(other.commission, commission) ||
                const DeepCollectionEquality()
                    .equals(other.commission, commission)) &&
            (identical(other.internationalDiscount, internationalDiscount) ||
                const DeepCollectionEquality().equals(
                    other.internationalDiscount, internationalDiscount)) &&
            (identical(other.mostPopularAmount, mostPopularAmount) ||
                const DeepCollectionEquality()
                    .equals(other.mostPopularAmount, mostPopularAmount)) &&
            (identical(other.localDiscount, localDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.localDiscount, localDiscount)) &&
            (identical(other.minAmount, minAmount) || const DeepCollectionEquality().equals(other.minAmount, minAmount)) &&
            (identical(other.mostPopularLocalAmount, mostPopularLocalAmount) || const DeepCollectionEquality().equals(other.mostPopularLocalAmount, mostPopularLocalAmount)) &&
            (identical(other.maxAmount, maxAmount) || const DeepCollectionEquality().equals(other.maxAmount, maxAmount)) &&
            (identical(other.localMinAmount, localMinAmount) || const DeepCollectionEquality().equals(other.localMinAmount, localMinAmount)) &&
            (identical(other.localMaxAmount, localMaxAmount) || const DeepCollectionEquality().equals(other.localMaxAmount, localMaxAmount)) &&
            (identical(other.logoUrls, logoUrls) || const DeepCollectionEquality().equals(other.logoUrls, logoUrls)) &&
            (identical(other.fixedAmounts, fixedAmounts) || const DeepCollectionEquality().equals(other.fixedAmounts, fixedAmounts)) &&
            (identical(other.suggestedAmounts, suggestedAmounts) || const DeepCollectionEquality().equals(other.suggestedAmounts, suggestedAmounts)) &&
            (identical(other.localFixedAmounts, localFixedAmounts) || const DeepCollectionEquality().equals(other.localFixedAmounts, localFixedAmounts)) &&
            (identical(other.fixedAmountsDescriptions, fixedAmountsDescriptions) || const DeepCollectionEquality().equals(other.fixedAmountsDescriptions, fixedAmountsDescriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(operatorId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(bundle) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(supportsLocalAmounts) ^
      const DeepCollectionEquality().hash(supportsGeographicalRechargePlans) ^
      const DeepCollectionEquality().hash(denominationType) ^
      const DeepCollectionEquality().hash(senderCurrencyCode) ^
      const DeepCollectionEquality().hash(senderCurrencySymbol) ^
      const DeepCollectionEquality().hash(destinationCurrencyCode) ^
      const DeepCollectionEquality().hash(destinationCurrencySymbol) ^
      const DeepCollectionEquality().hash(commission) ^
      const DeepCollectionEquality().hash(internationalDiscount) ^
      const DeepCollectionEquality().hash(mostPopularAmount) ^
      const DeepCollectionEquality().hash(localDiscount) ^
      const DeepCollectionEquality().hash(minAmount) ^
      const DeepCollectionEquality().hash(mostPopularLocalAmount) ^
      const DeepCollectionEquality().hash(maxAmount) ^
      const DeepCollectionEquality().hash(localMinAmount) ^
      const DeepCollectionEquality().hash(localMaxAmount) ^
      const DeepCollectionEquality().hash(logoUrls) ^
      const DeepCollectionEquality().hash(fixedAmounts) ^
      const DeepCollectionEquality().hash(suggestedAmounts) ^
      const DeepCollectionEquality().hash(localFixedAmounts) ^
      const DeepCollectionEquality().hash(fixedAmountsDescriptions);

  @JsonKey(ignore: true)
  @override
  _$ResponseCopyWith<_Response> get copyWith =>
      __$ResponseCopyWithImpl<_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(this);
  }
}

abstract class _Response implements Response {
  const factory _Response(
      int? id,
      int? operatorId,
      String? name,
      bool? bundle,
      bool? data,
      bool? pin,
      bool? supportsLocalAmounts,
      bool? supportsGeographicalRechargePlans,
      String? denominationType,
      String? senderCurrencyCode,
      String? senderCurrencySymbol,
      String? destinationCurrencyCode,
      String? destinationCurrencySymbol,
      double? commission,
      double? internationalDiscount,
      double? mostPopularAmount,
      double? localDiscount,
      double? minAmount,
      double? mostPopularLocalAmount,
      double? maxAmount,
      double? localMinAmount,
      double? localMaxAmount,
      List<String> logoUrls,
      List<double> fixedAmounts,
      List<double> suggestedAmounts,
      List<double> localFixedAmounts,
      dynamic fixedAmountsDescriptions) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get operatorId => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  bool? get bundle => throw _privateConstructorUsedError;
  @override
  bool? get data => throw _privateConstructorUsedError;
  @override
  bool? get pin => throw _privateConstructorUsedError;
  @override
  bool? get supportsLocalAmounts => throw _privateConstructorUsedError;
  @override
  bool? get supportsGeographicalRechargePlans =>
      throw _privateConstructorUsedError;
  @override
  String? get denominationType => throw _privateConstructorUsedError;
  @override
  String? get senderCurrencyCode => throw _privateConstructorUsedError;
  @override
  String? get senderCurrencySymbol => throw _privateConstructorUsedError;
  @override
  String? get destinationCurrencyCode => throw _privateConstructorUsedError;
  @override
  String? get destinationCurrencySymbol => throw _privateConstructorUsedError;
  @override
  double? get commission => throw _privateConstructorUsedError;
  @override
  double? get internationalDiscount => throw _privateConstructorUsedError;
  @override
  double? get mostPopularAmount => throw _privateConstructorUsedError;
  @override
  double? get localDiscount => throw _privateConstructorUsedError;
  @override
  double? get minAmount => throw _privateConstructorUsedError;
  @override
  double? get mostPopularLocalAmount => throw _privateConstructorUsedError;
  @override
  double? get maxAmount => throw _privateConstructorUsedError;
  @override
  double? get localMinAmount => throw _privateConstructorUsedError;
  @override
  double? get localMaxAmount => throw _privateConstructorUsedError;
  @override
  List<String> get logoUrls => throw _privateConstructorUsedError;
  @override
  List<double> get fixedAmounts => throw _privateConstructorUsedError;
  @override
  List<double> get suggestedAmounts => throw _privateConstructorUsedError;
  @override
  List<double> get localFixedAmounts => throw _privateConstructorUsedError;
  @override
  dynamic get fixedAmountsDescriptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseCopyWith<_Response> get copyWith =>
      throw _privateConstructorUsedError;
}
