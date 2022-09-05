part of 'load_funds_on_card_cubit.dart';

abstract class LoadfundsoncardState extends Equatable {}

class LoadfundsoncardInitialState extends LoadfundsoncardState {
  @override
  List<Object?> get props => ['LoadfundsoncardInitialState'];
}

class LoadfundsoncardLoadingState extends LoadfundsoncardState {
  final String loadingMessage;
  final DateTime dateTime;
  LoadfundsoncardLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class LoadfundsoncardSuccesstate extends LoadfundsoncardState {
  final LoadFundsOnCardModel model;
  final DateTime dateTime;
  LoadfundsoncardSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class LoadfundsoncardErrorState extends LoadfundsoncardState {
  final String errorMessage;
  final DateTime dateTime;
  LoadfundsoncardErrorState({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
