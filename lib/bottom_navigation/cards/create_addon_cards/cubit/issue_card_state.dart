part of 'issue_card_cubit.dart';

abstract class IssuecardState extends Equatable {}

class IssuecardInitialState extends IssuecardState {
  @override
  List<Object?> get props => ['IssuecardInitialState'];
}

class IssuecardLoadingState extends IssuecardState {
  final String loadingMessage;
  final DateTime dateTime;

  IssuecardLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class IssuecardSuccesstate extends IssuecardState {
  final IssueCardModel model;
  IssuecardSuccesstate(this.model);
  @override
  List<Object?> get props => [model];
}

class IssuecardErrorState extends IssuecardState {
  final String errorMessage;
  final DateTime dateTime;

  IssuecardErrorState({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
