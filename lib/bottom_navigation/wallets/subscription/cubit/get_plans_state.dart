part of 'get_plans_cubit.dart';


abstract class PlanState extends Equatable {}

class PlanInitialState extends PlanState {
  @override
  List<Object?> get props => ['PlanInitialState'];
}

class PlanLoadingState extends PlanState {
  final String loadingMessage;
  PlanLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class PlanSuccessState extends PlanState {
  final PlanModel model;
  final token;
  final email;
  PlanSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}



class PlanErrorState extends PlanState {
  final errorMessage;

  PlanErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
