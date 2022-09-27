
import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';


@freezed
abstract class RegistrationModel with _$RegistrationModel {
  const factory RegistrationModel(
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') Message message,

      ) = _RegistrationModel;

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message(
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'success') String? success,

      ) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}