part of 'verify_email_cubit.dart';


abstract class VerifyEmailState extends Equatable {}

class VerifyEmailInitialState extends VerifyEmailState {
  @override
  List<Object?> get props => ['VerifyEmailInitialState'];
}

class VerifyEmailLoading extends VerifyEmailState {
  final String loadingMessage;
  VerifyEmailLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class VerifyEmailSuccessfully extends VerifyEmailState {
  final VerifyEmailModel model;
  final DateTime dateTime;
  VerifyEmailSuccessfully({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class VerifyEmailError extends VerifyEmailState {
  final String errorMessage;
  final DateTime dateTime;
  VerifyEmailError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage];
}
