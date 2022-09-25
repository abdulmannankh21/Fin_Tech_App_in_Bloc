part of 'airtime_recharge_cubit.dart';


abstract class AirtimeRechargeState extends Equatable {}

class AirtimeRechargeInitialState extends AirtimeRechargeState {
  @override
  List<Object?> get props => ['AirtimeRechargeInitialState'];
}

class AirtimeRechargeLoadingState extends AirtimeRechargeState {
  final String loadingMessage;
  final DateTime dateTime;
  AirtimeRechargeLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class AirtimeRechargeSuccesstate extends AirtimeRechargeState {
  final GetOperatorModel model;
  final DateTime dateTime;
  AirtimeRechargeSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class AirtimeRechargeErrorState extends AirtimeRechargeState {
  final String errorMessage;
  final DateTime dateTime;
  AirtimeRechargeErrorState(
      {required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
