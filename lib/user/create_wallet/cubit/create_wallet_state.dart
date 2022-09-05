part of 'create_wallet_cubit.dart';

abstract class CreateWalletState extends Equatable {}

class CreateWalletInitialState extends CreateWalletState {
  @override
  List<Object?> get props => ['CreateWalletInitialState'];
}

class WalletCreatedLoading extends CreateWalletState {
  final String loadingMessage;
  WalletCreatedLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class WalletCreatedSuccessfully extends CreateWalletState {
  final CreateWalletModel model;
  final DateTime dateTime;
  WalletCreatedSuccessfully({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class WalletCreatedError extends CreateWalletState {
  final String errorMessage;
  final DateTime dateTime;
  WalletCreatedError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage];
}
