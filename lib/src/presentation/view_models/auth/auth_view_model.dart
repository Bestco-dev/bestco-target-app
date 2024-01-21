import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/numbers.dart';
import '../../../common/utils/http_client/token_provider.dart';
import '../../../common/utils/storage/shared_pref.dart';
import '../../../common/utils/storage/shared_pref_util.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/user/user.dart';
import '../../../domain/use_cases/auth/auth_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../app_view_model.dart';
import 'user_view_model.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, UiState<UserEntity>>(
        (ref) => AuthViewModel(ref, ref.read(authUseCaseProvider)));

class AuthViewModel extends StateNotifier<UiState<UserEntity>> {
  final AuthUseCase _useCase;
  final Ref ref;

  AuthViewModel(this.ref, this._useCase) : super(const UiState.initial());

  Future<void> login(String username, String password, String database) async {
    ProgressBar.show();
    final result = await _useCase.doLogin(ReqParam(url: "authenticate", data: {
      "username": username,
      "password": password,
      "database": database
    }));
    ProgressBar.hide();
    result.when(success: (data) {
      ref.read(userViewModelProvider.notifier).setUser(data);

      SharedPrefUtil.saveUser(json.encode(data.toJson()));
      ref.read(authTokenProvider).setToken("access_token");
      SharedPrefUtil.saveAuthToken("access_token");
      state = UiState<UserEntity>.data(data: data);
      ref.read(routerNotifierProvider.notifier).authenticate();
    }, failure: (err) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.error,
        message: err.message,
      );
      UiState<UserEntity>.error(error: err);
    });
  }

  Future<bool> logout() async {
    ProgressBar.show();
    await 1.delay();
    ProgressBar.hide();
    ref.read(routerNotifierProvider.notifier).unAuthenticate();
    SharedPref.clear();

    return true;
  }
}
