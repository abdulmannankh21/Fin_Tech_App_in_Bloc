import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


import '../../../../core/errors/htp_custom_error.dart';
import '../repository/process_repo.dart';



part 'process_recharge_state.dart';

class ProcessRechargeCubit extends Cubit<ProcessRechargeState> {
  final AirtimeProcessRepository repository;
  ProcessRechargeCubit({required this.repository})
      : super(ProcessRechargeInitialState());

  Future<void> processRecharge(String countryIso,String operatorId,String amount,String phoneNumber) async {
    try {
      emit(ProcessRechargeLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));

      final _model = await repository.processRecharge(operatorId,countryIso,amount,phoneNumber);

      emit(ProcessRechargeSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));

    } on HtpCustomError catch (e) {
      print(e);
      emit(ProcessRechargeErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(ProcessRechargeErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}
