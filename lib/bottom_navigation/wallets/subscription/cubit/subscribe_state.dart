part of 'subscribe_cubit.dart';


abstract class SubscribeState extends Equatable {}

class SubscribeInitialState extends SubscribeState {
  @override
  List<Object?> get props => ['SubscribeInitialState'];
}

class SubscribeLoadingState extends SubscribeState {
  final String loadingMessage;
  SubscribeLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}


class SubscribeSuccessState extends SubscribeState {
  final model;
  final token;
  final email;
  SubscribeSuccessState(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}



class SubscribeErrorState extends SubscribeState {
  final errorMessage;
  SubscribeErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
