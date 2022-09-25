part of 'airtime_cubit.dart';

abstract class AirtimeState extends Equatable {}

class AirtimeInitialState extends AirtimeState {
  @override
  List<Object?> get props => ['AirtimeInitialState'];
}

class AirtimeLoadingState extends AirtimeState {
  final String loadingMessage;
  final DateTime dateTime;
  AirtimeLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class AirtimeSuccesstate extends AirtimeState {
  final OperatorModel model;
  final DateTime dateTime;
  AirtimeSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class AirtimeErrorState extends AirtimeState {
  final String errorMessage;
  final DateTime dateTime;
  AirtimeErrorState(
      {required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
