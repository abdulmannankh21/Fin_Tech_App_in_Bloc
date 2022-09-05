part of 'add_on_user_cubit.dart';


abstract class AddOnUserState extends Equatable {}

class AddOnUserInitialState extends AddOnUserState {
  @override
  List<Object?> get props => ['AddOnUserInitialState'];
}

class AddOnUserLoadingState extends AddOnUserState {
  final String loadingMessage;
  AddOnUserLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class AddOnUserListSuccesstate extends AddOnUserState {
  final AddOnUserModel model;
  final token;
  final email;
  AddOnUserListSuccesstate(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class AddOnUserCreateSuccesstate extends AddOnUserState {
  final  model;
  AddOnUserCreateSuccesstate(this.model);
  @override
  List<Object?> get props => [model];
}

class AddOnUserErrorState extends AddOnUserState {
  final errorMessage;

  AddOnUserErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
