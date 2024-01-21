import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../data/types/types.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/visit/visit.dart';
import '../../../domain/use_cases/visits/load_one_visit_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';

final visitViewModelProvider =
    StateNotifierProvider<VisitsViewModel, UiState<VisitModel>>(
        (ref) => VisitsViewModel(ref: ref));

class VisitsViewModel extends StateNotifier<UiState<VisitModel>> {
  final Ref ref;
  late VisitModel visit;

  VisitsViewModel({required this.ref}) : super(const UiState.initial());

  load(int visitId) async {
    state = const UiState.loading();
    final result = await ref
        .read(loadOneVisitUseCaseProvider)
        .call(ReqParam(url: "/visit/$visitId"));

    result.when(success: (data) {
      state = UiState.data(data: data);
      visit = data.copyWith();
      log(visit.toJson().toString());
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  Future<bool> requestForConfirmation() async {
    ProgressBar.show();
    await Future.delayed(const Duration(seconds: 2));
    ProgressBar.hide();

    state = UiState.data(
        data: visit.copyWith(
      action: VisitAction.proceed,
    ));
    AppCustomDialogs.showInfoDialog(
      type: DialogType.success,
      message: Localization.current.requestConfirmationSendSuccessfullyMessage,
    );
    return true;
  }
}
