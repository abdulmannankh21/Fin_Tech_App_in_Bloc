part of 'mastercard_cubit.dart';


abstract class MasterCardState extends Equatable {}

class MasterCardInitialState extends MasterCardState {
  @override
  List<Object?> get props => ['MasterCardInitialState'];
}

class MasterCardLoadingState extends MasterCardState {
  final String loadingMessage;
  MasterCardLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class MasterCardSuccessState extends MasterCardState {
  final CommonResponseModel model;
  final token;
  final email;
  MasterCardSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class MasterCardDetailSuccessState extends MasterCardState {
  final MasterCardDetails model;
  final token;
  final email;
  MasterCardDetailSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class MasterCardErrorState extends MasterCardState {
  final errorMessage;
  MasterCardErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
