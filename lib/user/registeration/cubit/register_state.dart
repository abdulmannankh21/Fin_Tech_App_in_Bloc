part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {}

class LoginInitial extends RegisterState {
  @override
  List<Object?> get props => ['RegisterInitial'];
}

class RegisterLoading extends RegisterState {
  final String loadingMessage;
  final DateTime dateTime;
  RegisterLoading({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class RegisterError extends RegisterState {
  final String errorMessage;
  final DateTime dateTime;
  RegisterError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

class RegisterSuccess extends RegisterState {
  RegistrationModel  userModel;
  RegisterSuccess({required this.userModel});
  @override
  List<Object?> get props => [userModel];
}

