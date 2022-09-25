part of 'process_recharge_cubit.dart';


abstract class ProcessRechargeState extends Equatable {}

class ProcessRechargeInitialState extends ProcessRechargeState {
  @override
  List<Object?> get props => ['ProcessRechargeInitialState'];
}

class ProcessRechargeLoadingState extends ProcessRechargeState {
  final String loadingMessage;
  final DateTime dateTime;
  ProcessRechargeLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class ProcessRechargeSuccesstate extends ProcessRechargeState {
  final dynamic model;
  final DateTime dateTime;
  ProcessRechargeSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class ProcessRechargeErrorState extends ProcessRechargeState {
  final String errorMessage;
  final DateTime dateTime;
  ProcessRechargeErrorState(
      {required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
