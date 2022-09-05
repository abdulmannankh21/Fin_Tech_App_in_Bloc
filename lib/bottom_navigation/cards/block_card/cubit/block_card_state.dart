part of 'block_card_cubit.dart';

abstract class BlockcardState extends Equatable {}

class BlockcardInitialState extends BlockcardState {
  @override
  List<Object?> get props => ['BlockcardInitialState'];
}

class BlockcardLoadingState extends BlockcardState {
  final String loadingMessage;
  final DateTime dateTime;
  BlockcardLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class BlockcardSuccesstate extends BlockcardState {
  final BlockCardModel model;
  final DateTime dateTime;
  BlockcardSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class BlockcardErrorState extends BlockcardState {
  final String errorMessage;
  final DateTime dateTime;
  BlockcardErrorState({required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}
