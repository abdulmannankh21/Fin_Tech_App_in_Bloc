part of 'mastercard_load_funds_cubit.dart';


abstract class MasterCardLoadFundState extends Equatable {}

class MasterCardInitialState extends MasterCardLoadFundState {
  @override
  List<Object?> get props => ['MasterCardInitialState'];
}

class MasterCardLoadFundLoadingState extends MasterCardLoadFundState {
  final String loadingMessage;
  MasterCardLoadFundLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class MasterCardLoadFundSuccessState extends MasterCardLoadFundState {
  final CommonResponseModel model;
  final token;
  final email;
  MasterCardLoadFundSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}


class MasterCardLoadFundErrorState extends MasterCardLoadFundState {
  final errorMessage;
  MasterCardLoadFundErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
