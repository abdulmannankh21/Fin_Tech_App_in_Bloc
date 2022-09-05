part of 'verify_mobile_cubit.dart';


abstract class VerifyMobileState extends Equatable {}

class VerifyMobileInitialState extends VerifyMobileState {
  @override
  List<Object?> get props => ['VerifyMobileInitialState'];
}

class VerifyMobileLoading extends VerifyMobileState {
  final String loadingMessage;
  VerifyMobileLoading(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class VerifyMobileSuccessfully extends VerifyMobileState {
  final VerifyMobileModel model;
  final DateTime dateTime;
  VerifyMobileSuccessfully({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class VerifyMobileError extends VerifyMobileState {
  final String errorMessage;
  final DateTime dateTime;
  VerifyMobileError({
    required this.errorMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [errorMessage];
}
