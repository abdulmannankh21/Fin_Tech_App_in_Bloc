part of 'card_details_cubit.dart';

abstract class CarddetailsState extends Equatable {}

class CarddetailsInitialState extends CarddetailsState {
  @override
  List<Object?> get props => ['CarddetailsInitialState'];
}

class CarddetailsLoadingState extends CarddetailsState {
  final String loadingMessage;
  CarddetailsLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class CarddetailsSuccesstate extends CarddetailsState {
  final CardDetailsModel model;
  final token;
  final email;
  CarddetailsSuccesstate(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class CarddetailsErrorState extends CarddetailsState {
  final errorMessage;

  CarddetailsErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class IssueCardSuccesstate extends CarddetailsState {
  final CardDetailsModel model;
  final token;
  final email;
  IssueCardSuccesstate(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class IssueCardErrorstate extends CarddetailsState {
  final errorMessage;

  IssueCardErrorstate(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
