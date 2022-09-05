part of 'logout_cubit.dart';

abstract class LogoutState extends Equatable {}

class LogoutInitialState extends LogoutState {
  @override
  List<Object?> get props => ['LogoutInitialState'];
}

class LogOutLoading extends LogoutState {
  final String loadingMessage;
  LogOutLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class ProfileChangeSucess extends LogoutState {
  final ProfileImageChangeModel model;
  ProfileChangeSucess(this.model);
  @override
  List<Object?> get props => [model];
}

class LogOutError extends LogoutState {
  final String errorMessage;
  LogOutError(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class LogOutSuccess extends LogoutState {
  final String message;
  LogOutSuccess(this.message);
  @override
  List<Object?> get props => [message];
}
