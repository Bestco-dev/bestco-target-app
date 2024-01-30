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

  // final db = "bestco";
  final db = "Bestco";
  // final db = "bestcostaging";

  final accessToken =
      "\$pbkdf2-sha512\$25000\$Zuyd8773XktJ6f2fU0rJ2Q\$ITyV2auz81/v0uXWzqsJ5ytTf4J3Qc1bnpxy990mjt0CbMPs9J3473X3TXe1J4o5OXJOu8bTMM3ywuSly5p9pQ";

  AuthViewModel(this.ref, this._useCase) : super(const UiState.initial());

  Future<void> login(String username, String password, String database) async {
    ProgressBar.show();
    final result = await _useCase.doLogin(ReqParam(
        url: "", data: {"email": username, "password": password, "db": db}));
    ProgressBar.hide();
    result.when(success: (data) {
      ref.read(userViewModelProvider.notifier).setUser(data);

      SharedPrefUtil.saveUser(json.encode(data.toJson()));
      //***********************//

      // ref.read(authTokenProvider).setToken(accessToken);
      // SharedPrefUtil.saveAuthToken(accessToken);
      state = UiState<UserEntity>.data(data: data);
      ref.read(routerNotifierProvider.notifier).authenticate();

      //***********************//
    }, failure: (err) {
      if (err.isUnauthorisedRequest) {
        AppCustomDialogs.showInfoDialog(
          type: DialogType.error,
          message: "اسم المستخدم او كلمة المرور غير صحيحة",
        );
      } else {
        AppCustomDialogs.showInfoDialog(
          type: DialogType.error,
          message: err.message,
        );
      }
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
