part of 'unblock_card_cubit.dart';

abstract class UnblockcardState extends Equatable {}

class UnblockcardInitialState extends UnblockcardState {
  @override
  List<Object?> get props => ['UnblockcardInitialState'];
}

class UnblockcardLoadingState extends UnblockcardState {
  final String loadingMessage;
  final DateTime dateTime;
  UnblockcardLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class UnblockcardSuccesstate extends UnblockcardState {
  final UnblockCardModel model;
  final DateTime dateTime;
  UnblockcardSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class UnblockcardErrorState extends UnblockcardState {
  final String errorMessage;
  final DateTime dateTime;
  UnblockcardErrorState({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
