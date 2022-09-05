part of 'view_addon_card_details_cubit.dart';

abstract class ViewAddOnCardDetailsState extends Equatable {}

class ViewAddOnCardDetailsInitialState extends ViewAddOnCardDetailsState {
  @override
  List<Object?> get props => ['CarddetailsInitialState'];
}

class ViewAddOnCardDetailsLoadingState extends ViewAddOnCardDetailsState {
  final String loadingMessage;
  ViewAddOnCardDetailsLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class ViewAddOnCardDetailsSuccesstate extends ViewAddOnCardDetailsState {
  final CardDetailsModel model;
  final token;
  final email;
  ViewAddOnCardDetailsSuccesstate(this.model,this.email,this.token);
  @override
  List<Object?> get props => [model];
}

class ViewAddOnCardDetailsErrorState extends ViewAddOnCardDetailsState {
  final errorMessage;

  ViewAddOnCardDetailsErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
