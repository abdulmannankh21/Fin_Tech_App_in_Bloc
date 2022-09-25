import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/htp_custom_error.dart';
import '../model/operator_model/airtime_operator_model.dart';
import '../repository/airtime_repository.dart';


part 'airtime_state.dart';

class AirtimeCubit extends Cubit<AirtimeState> {
  final AirtimeRepository repository;
  AirtimeCubit({required this.repository})
      : super(AirtimeInitialState());

  Future<void> getOperatorDetails(String countryIso) async {
    try {
        emit(AirtimeLoadingState(
          loadingMessage: "Loading card...",
          dateTime: DateTime.now(),
        ));

        final _model = await repository.getOperatorDetails(countryIso);

        emit(AirtimeSuccesstate(
          model: _model,
          dateTime: DateTime.now(),
        ));

    } on HtpCustomError catch (e) {
      emit(AirtimeErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(AirtimeErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
