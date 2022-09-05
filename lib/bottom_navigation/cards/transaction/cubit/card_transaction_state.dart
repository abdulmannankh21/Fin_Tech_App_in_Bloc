part of 'card_transaction_cubit.dart';

abstract class CardTransactionState extends Equatable {}

class CardTransactionInitialState extends CardTransactionState {
  @override
  List<Object?> get props => ['CardTransactionInitialState'];
}

class CardTransactionLoadingState extends CardTransactionState {
  final String loadingMessage;
  final DateTime dateTime;

  CardTransactionLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class CardTransactionSuccesstate extends CardTransactionState {
  final CardTransactionModel model;
  CardTransactionSuccesstate(this.model);
  @override
  List<Object?> get props => [model];
}

class CardTransactionErrorState extends CardTransactionState {
  final String errorMessage;
  final DateTime dateTime;

  CardTransactionErrorState({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

class SearchResultLoaded extends CardTransactionState {
  final List<TransactionModel>? allTransaction;

  SearchResultLoaded({required this.allTransaction});
  @override
  List<Object?> get props => [allTransaction];
}


