import 'dart:io';

import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/numbers.dart';
import '../../../common/res/router.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/user/user.dart';
import '../../../domain/use_cases/auth/auth_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';
import '../language_view_model.dart';
import 'user_view_model.dart';

final profileUpdaterModelProvider =
    StateNotifierProvider<ProfileInfoViewModel, UiState<UserEntity>>(
        (ref) => ProfileInfoViewModel(ref, ref.read(authUseCaseProvider)));

class ProfileInfoViewModel extends StateNotifier<UiState<UserEntity>> {
  final AuthUseCase _useCase;
  final Ref ref;

  ProfileInfoViewModel(this.ref, this._useCase)
      : super(const UiState.initial());

  Future<void> profilePicture(File file) async {
    ProgressBar.show();
    final result = await _useCase.update(ReqParam(url: '', data: {
      "file": file,
    }));
    ProgressBar.hide();
    result.when(success: (data) {
      state = UiState.data(data: data);
      ref.read(userViewModelProvider.notifier).setUser(data);
    }, failure: (err) {
      CustomSnakeBars.showErrorSnakeBar(err.message);
      state = UiState<UserEntity>.error(error: err);
    });
  }

  Future<void> name(String name) async {
    final result = await _useCase.update(ReqParam(url: '', data: {
      "name": name,
    }));
    result.when(success: (data) {
      state = UiState<UserEntity>.data(data: data);
    }, failure: (err) {
      UiState<UserEntity>.error(error: err);
    });
  }

  Future<bool> updateLang({required String langCode}) async {
    ProgressBar.show();
    await 1.delay();
    final result = await _useCase.update(ReqParam(url: '', data: {
      "lang": name,
    }));
    ProgressBar.hide();
    return result.when(success: (data) {
      state = UiState<UserEntity>.data(data: data);
      ref.read(languageProvider.notifier).saveLanguage(langCode);
      try {
        Phoenix.rebirth(NavigationService.context!);
      }catch(e){
        print(e);
      }
      return true;
    }, failure: (err) {
      UiState<UserEntity>.error(error: err);
      return false;
    });
  }
}
