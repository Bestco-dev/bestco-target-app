import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/auth/auth_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';

final passwordViewModelProvider =
    StateNotifierProvider<ResetPasswordViewModel, UiState<bool>>(
  (ref) => ResetPasswordViewModel(
    ref.read(authUseCaseProvider),
  ),
);

class ResetPasswordViewModel extends StateNotifier<UiState<bool>> {
  final AuthUseCase _useCase;

  ResetPasswordViewModel(this._useCase) : super(const UiState.initial());

  Future<void> reset(
      String oldPassword, String newPassword, String confirmPassword) async {
    ProgressBar.show();
    final result = await _useCase.resetPassword(ReqParam(url: "reset", data: {
      "old": oldPassword,
      "new": newPassword,
      'confirm': confirmPassword
    }));
    // await Future.delayed(const Duration(seconds: 4));
    ProgressBar.hide();
    state = const UiState<bool>.loading();
    result.when(success: (data) {
      CustomSnakeBars.showDoneSnakeBar(Localization.current.resetDone,);
      state = UiState<bool>.data(data: data);
    }, failure: (err) {
      CustomSnakeBars.showErrorSnakeBar(err.message);
      UiState<bool>.error(error: err);
    });
  }

  Future<void> forget({required String email}) async {
    ProgressBar.show();
    final result = await _useCase.forgetPassword(ReqParam(url: "forget"));
    ProgressBar.hide();
    result.when(success: (data) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.success,
        message: Localization.current.forgetEmailSend(email),
      );
    }, failure: (err) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.error,
        message: err.message,
      );
    });
  }
}
