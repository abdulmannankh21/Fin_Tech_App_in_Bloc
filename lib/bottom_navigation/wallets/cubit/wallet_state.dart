part of 'wallet_cubit.dart';


abstract class WalletState extends Equatable {}

class WalletInitialState extends WalletState {
  @override
  List<Object?> get props => ['WalletInitialState'];
}

class WalletLoadingState extends WalletState {
  final String loadingMessage;
  WalletLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class WalletSuccessState extends WalletState {
  final WalletDetails model;
  final token;
  final email;
  WalletSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}
class WalletAddFundsSuccessState extends WalletState {
  final model;
  final token;
  final email;
  WalletAddFundsSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}


class WalletErrorState extends WalletState {
  final errorMessage;

  WalletErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
