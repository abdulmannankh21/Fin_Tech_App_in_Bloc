part of 'transaction_cubit.dart';


abstract class MasterCardTransactionState extends Equatable {}

class MasterCardTransactionInitialState extends MasterCardTransactionState {
  @override
  List<Object?> get props => ['MasterCardInitialState'];
}

class MasterCardTransactionLoadingState extends MasterCardTransactionState {
  final String loadingMessage;
  MasterCardTransactionLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class MasterCardTransactionSuccessState extends MasterCardTransactionState {
  final  TransactionDetails model;
  final token;
  final email;
  MasterCardTransactionSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class MasterCardSearchResultLoaded extends MasterCardTransactionState {
  final  List<Entry>? model;
  MasterCardSearchResultLoaded(this.model);
  @override
  List<Object?> get props => [model];
}




class MasterCardTransactionErrorState extends MasterCardTransactionState {
  final errorMessage;
  MasterCardTransactionErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
