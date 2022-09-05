import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_countries_model.freezed.dart';
part 'get_countries_model.g.dart';

@freezed
abstract class GetCountriesModel with _$GetCountriesModel {
  const factory GetCountriesModel(
    @JsonKey(name: 'iso_alpha2') String? isoAlpha2,
    @JsonKey(name: 'iso_alpha3') String? isoAlpha3,
    @JsonKey(name: 'country_name') String? countryName,
  ) = _GetCountriesModel;

  factory GetCountriesModel.fromJson(Map<String, dynamic> json) =>
      _$GetCountriesModelFromJson(json);
}
