part of 'add_fund_wallet_cubit.dart';


abstract class WalletFundState extends Equatable {}

class WalletFundInitialState extends WalletFundState {
  @override
  List<Object?> get props => ['WalletFundInitialState'];
}

class WalletFundLoadingState extends WalletFundState {
  final String loadingMessage;
  WalletFundLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class WalletFundSuccessState extends WalletFundState {
  final model;
  final token;
  final email;
  WalletFundSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}



class WalletFundErrorState extends WalletFundState {
  final errorMessage;

  WalletFundErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
