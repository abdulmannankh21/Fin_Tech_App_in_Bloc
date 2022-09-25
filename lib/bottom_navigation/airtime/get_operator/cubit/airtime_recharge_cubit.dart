import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


import '../../../../core/errors/htp_custom_error.dart';
import '../model/get_operator_model.dart';
import '../repository/recharge_repo.dart';

part 'airtime_recharge_state.dart';

class AirtimeRechargeCubit extends Cubit<AirtimeRechargeState> {
  final AirtimeRechargeRepository repository;
  AirtimeRechargeCubit({required this.repository})
      : super(AirtimeRechargeInitialState());

  Future<void> getOperatorById(String countryIso,String operatorId) async {
    try {
      emit(AirtimeRechargeLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));

      final _model = await repository.getOperatorById(operatorId,countryIso);

      emit(AirtimeRechargeSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));

    } on HtpCustomError catch (e) {
      emit(AirtimeRechargeErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(AirtimeRechargeErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
