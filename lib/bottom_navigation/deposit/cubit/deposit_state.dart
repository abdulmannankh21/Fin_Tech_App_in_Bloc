part of 'deposit_cubit.dart';

abstract class DepositState extends Equatable {}

class DepositInitialState extends DepositState {
  @override
  List<Object?> get props => ['DepositInitialState'];
}

class DepositLoadingState extends DepositState {
  final String loadingMessage;
  DepositLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class DepositSuccesstate extends DepositState {
  final DepositMethodModel model;
  final token;
  final email;
  DepositSuccesstate(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class DepositInsertSuccesstate extends DepositState {
  final dynamic model;
  final token;
  final email;
  DepositInsertSuccesstate(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class DepositErrorState extends DepositState {
  final errorMessage;
  DepositErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

