part of 'issuecard_cubit.dart';

abstract class MasterCardIssueState extends Equatable {}

class MasterCardIssueInitialState extends MasterCardIssueState {
  @override
  List<Object?> get props => ['MasterCardInitialState'];
}

class MasterCardIssueLoadingState extends MasterCardIssueState {
  final String loadingMessage;
  MasterCardIssueLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}
class MasterCardIssueSuccessState extends MasterCardIssueState {
  final CommonResponseModel model;
  final token;
  final email;
  MasterCardIssueSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class MasterCardIssueErrorState extends MasterCardIssueState {
  final errorMessage;

  MasterCardIssueErrorState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}