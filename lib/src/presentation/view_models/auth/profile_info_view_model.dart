import 'package:bestco_app/locales/localization/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/user/user.dart';
import '../../../domain/use_cases/auth/auth_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';
import 'user_view_model.dart';

final profileViewModelProvider =
    StateNotifierProvider<ProfileInfoViewModel, UiState<UserEntity>>(
        (ref) => ProfileInfoViewModel(ref, ref.read(authUseCaseProvider)));

class ProfileInfoViewModel extends StateNotifier<UiState<UserEntity>> {
  final AuthUseCase _useCase;
  Ref ref;

  ProfileInfoViewModel(this.ref, this._useCase)
      : super(const UiState.initial());

  Future<void> loadInfo() async {
    state = const UiState.loading();
    final result = await _useCase.loadInfo();
    result.when(success: (data) {
      ref.read(userViewModelProvider.notifier).setUser(data);
      state = UiState.data(data: data);
    }, failure: (err) {
      state = UiState.error(error: err);
    });
  }

  Future<void> refreshData({bool showLoading=false}) async {
  if(showLoading)  ProgressBar.show();
    final result = await _useCase.loadInfo();
  if(showLoading)  ProgressBar.hide();
    result.when(success: (data) {
      ref.read(userViewModelProvider.notifier).setUser(data);
      CustomSnakeBars.showDoneSnakeBar(Localization.current.dataRefreshSuccessfully,);
      // AppCustomDialogs.showInfoDialog(
      //   type: DialogType.success,
      //   message: "Data Refreshed successfully",
      // );
    }, failure: (err) {
      CustomSnakeBars.showErrorSnakeBar(err.message);
    });
  }
  // Future<bool> logout() async {
  //   ProgressBar.show();
  //   await 1.delay();
  //   ProgressBar.hide();
  //   ref.read(routerNotifierProvider.notifier).unAuthenticate();
  //   SharedPref.clear();
  //
  //   return true;
  // }
}
