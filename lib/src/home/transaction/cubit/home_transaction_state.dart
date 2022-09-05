part of 'home_transaction_cubit.dart';

abstract class HomeTransactionState extends Equatable {}

class HomeTransactionInitialState extends HomeTransactionState {
  @override
  List<Object?> get props => ['HomeTransactionInitialState'];
}

class HomeTransactionLoadingState extends HomeTransactionState {
  final String loadingMessage;
  final DateTime dateTime;

  HomeTransactionLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class HomeTransactionSuccesstate extends HomeTransactionState {
  final HomeTransactionModel model;
  HomeTransactionSuccesstate(this.model);
  @override
  List<Object?> get props => [model];
}

class HomeTransactionErrorState extends HomeTransactionState {
  final String errorMessage;
  final DateTime dateTime;

  HomeTransactionErrorState({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

class HomeSearchResultLoaded extends HomeTransactionState {
  final List<HomeWalletTransactionDetails>? allTransaction;

  HomeSearchResultLoaded({required this.allTransaction});
  @override
  List<Object?> get props => [allTransaction];
}


