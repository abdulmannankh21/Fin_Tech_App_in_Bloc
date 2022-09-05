import 'package:freezed_annotation/freezed_annotation.dart';

part 'api.freezed.dart';
part 'api.g.dart';

@freezed
class Api with _$Api {
  factory Api(
    String? secret,
    @JsonKey(name: 'api_key') String? apiKey,
    String? id,
  ) = _Api;

  factory Api.fromJson(Map<String, dynamic> json) => _$ApiFromJson(json);
}
