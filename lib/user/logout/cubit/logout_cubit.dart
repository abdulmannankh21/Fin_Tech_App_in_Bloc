import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/user/login/domain/login_repository.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';
import 'package:flutter_app/user/logout/model/profile_image_change_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_app/core/errors/htp_custom_error.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/src/constant/constant.dart';


part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LoginRepository repository;
  final LoginCubit loginCubit;
  LogoutCubit({
    required this.repository,
    required this.loginCubit,
  }) : super(LogoutInitialState());

  void logOut() async {
    try {
      emit(LogOutLoading('loading...'));

      await repository.logOut();

      //clear firstTimeLoginResponse
      await MySharedPreferences().setBooleanValue(key: Constant.firstTimeOpen, value: false);
      ///Clear app chache
      await _deleteCacheDir();

      emit(LogOutSuccess("user logout successfully"));
    } on HtpCustomError catch (e) {
      emit(LogOutError(e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(LogOutError("$e"));
    }
  }

  Future<void> _deleteCacheDir() async {
    var tempDir = await getTemporaryDirectory();

    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
  }

  void changeProfilePic({required XFile file}) async {
    try {
      emit(LogOutLoading('loading...'));
      final _profileModel = await repository.changeProfileImage(
        file: file
      );
      await MySharedPreferences().setStringeanValue(key: Constant.profileImage, value: _profileModel.merchant_logo!);
      emit(ProfileChangeSucess(_profileModel));
    } on HtpCustomError catch (e) {
      emit(LogOutError(e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(LogOutError("$e"));
    }
  }
}
