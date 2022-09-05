part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {}

class DashboardInitialState extends DashboardState {
  @override
  List<Object?> get props => ['DashboardInitialState'];
}

class DashboardLoading extends DashboardState {
  final String loadingMessage;
  DashboardLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class DashboardError extends DashboardState {
  final String errorMessage;
  final DateTime dateTime;
  DashboardError(this.errorMessage, this.dateTime);
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

class DashboardSuccess extends DashboardState {
  final DashboardModel model;
  final DateTime dateTime;
  DashboardSuccess(this.model, this.dateTime);
  @override
  List<Object?> get props => [model, dateTime];
}
