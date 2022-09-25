



import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/operator_model/airtime_operator_model.dart';


part 'get_operator_model.freezed.dart';
part 'get_operator_model.g.dart';


@freezed
abstract class GetOperatorModel with _$GetOperatorModel {
  const factory GetOperatorModel(

      String? status,
      String? message,
      int? code,
      OperatorData data,
      ) = _OperatorModel;

  factory GetOperatorModel.fromJson(Map<String, dynamic> json) =>
      _$GetOperatorModelFromJson(json);
}


@freezed
abstract class OperatorData with _$OperatorData {
  const factory OperatorData(

      Response response,
      String? country,
      ) = _OperatorData;

  factory OperatorData.fromJson(Map<String, dynamic> json) =>
      _$OperatorDataFromJson(json);
}