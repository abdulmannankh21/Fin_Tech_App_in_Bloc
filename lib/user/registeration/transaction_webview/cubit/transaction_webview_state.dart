part of 'transaction_webview_cubit.dart';


abstract class TransactionWebviewState extends Equatable {}

class TransactionWebviewInititalState extends TransactionWebviewState {
  @override
  List<Object?> get props => ['TransactionWebviewInititalState'];
}

class TransactionWebviewLoading extends TransactionWebviewState {
  final String loadingMessage;
  TransactionWebviewLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class TransactionWebviewSuccessfully extends TransactionWebviewState {
  final Map<String,dynamic> model;
  final DateTime dateTime;
  TransactionWebviewSuccessfully({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class TransactionWebviewError extends TransactionWebviewState {
  final String errorMessage;
  final DateTime dateTime;
  TransactionWebviewError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage];
}
class TransactionWebviewVerifyEmail extends TransactionWebviewState {
  final String message;
  final DateTime dateTime;
  TransactionWebviewVerifyEmail({
    required this.message,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [message];
}
class TransactionWebviewVerifyMobile extends TransactionWebviewState {
  final String message;
  final DateTime dateTime;
  TransactionWebviewVerifyMobile({
    required this.message,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [message];
}
class TransactionWebviewSessionInvalid extends TransactionWebviewState {
  final String errorMessage;
  final DateTime dateTime;
  TransactionWebviewSessionInvalid({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage];
}
class TransactionWebviewKYC extends TransactionWebviewState {
  final String message;
  final String kyctoken;
  final DateTime dateTime;
  TransactionWebviewKYC({
    required this.message,
    required this.kyctoken,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [message];
}
