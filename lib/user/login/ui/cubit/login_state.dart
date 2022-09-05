part of 'login_cubit.dart';

abstract class LoginState extends Equatable {}

class LoginInitial extends LoginState {
  @override
  List<Object?> get props => ['LoginInitial'];
}

class LoginLoading extends LoginState {
  final String loadingMessage;
  final DateTime dateTime;
  LoginLoading({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class LoginError extends LoginState {
  final String errorMessage;
  final DateTime dateTime;
  LoginError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

class LoginSuccess extends LoginState {
  final UserModel userModel;
  LoginSuccess({required this.userModel});
  @override
  List<Object?> get props => [userModel];
}

class ForgetPasswordSuccess extends LoginState {
  final ForgotPasswordModel model;
  ForgetPasswordSuccess(this.model);
  @override
  List<Object?> get props => [model];
}
