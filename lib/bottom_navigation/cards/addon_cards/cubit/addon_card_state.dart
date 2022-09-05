part of 'addon_card_cubit.dart';

abstract class AddOnCardState extends Equatable {}

class AddOnCardInitialState extends AddOnCardState {
  @override
  List<Object?> get props => ['AddonCardInitialState'];
}

class AddOnCardLoadingState extends AddOnCardState {
  final String loadingMessage;
  final DateTime dateTime;
  AddOnCardLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class AddOnCardSuccesstate extends AddOnCardState {
  final AddonCardModel model;
  final DateTime dateTime;
  AddOnCardSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class AddOnCardErrorState extends AddOnCardState {
  final String errorMessage;
  final DateTime dateTime;
  AddOnCardErrorState({required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
