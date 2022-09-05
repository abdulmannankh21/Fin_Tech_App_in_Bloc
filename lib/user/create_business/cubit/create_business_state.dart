part of 'create_business_cubit.dart';

abstract class CreateBusinessState extends Equatable {}

class CreateBusinessInitialState extends CreateBusinessState {
  @override
  List<Object?> get props => ['CreateBusinessInitialState'];
}

class BusinessCreatedLoading extends CreateBusinessState {
  final String loadingMessage;
  BusinessCreatedLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class BusinessCreatedSuccessfully extends CreateBusinessState {
  final CreateBusinessModel model;
  final DateTime dateTime;
  BusinessCreatedSuccessfully({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class BusinessCreatedError extends CreateBusinessState {
  final String errorMessage;
  final DateTime dateTime;
  BusinessCreatedError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage];
}
