import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../locales/localization/l10n.dart';
import '../../../../common/res/router.dart';
import '../../../../domain/entities/equipment/equipment.dart';
import '../../../../domain/entities/key_value/key_value.dart';
import '../../../../domain/entities/kpi/kpi.dart';
import '../../../../domain/entities/system/system.dart';
import '../../../../domain/entities/visit/visit.dart';
import '../../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../../custom_widgets/common/custom_progress_bar.dart';
import 'kpi_view_model.dart';

final visitProceedProvider =
    StateNotifierProvider.family<_VisitViewModel, VisitModel, VisitModel>(
        (ref, model) {
  return _VisitViewModel(ref, model);
});

class _VisitViewModel extends StateNotifier<VisitModel> {
  Ref ref;
  _VisitViewModel(this.ref, super.state);
  bool isCompleteChecking(KpiOptionModel option) {
    return false;
  }

  List<SystemModel> get systems => state.systems;

  void confirm({SystemModel? system}) async {
    _validateSate();
    ProgressBar.show();
    await Future.delayed(const Duration(seconds: 2));
    ProgressBar.hide();
    NavigationService.navBack(); //if successfully completed..

    AppCustomDialogs.showInfoDialog(
      type: DialogType.success,
      message: Localization.current.visitReportSendSuccessfullyMessage,
    );
  }

  Future<bool> confirmEmergency({
    required String note,
    required List<File> attach,
    required List<SystemModel> systems,
    required List<EquipmentModel> equipments,
  }) async {
    ProgressBar.show();
    await Future.delayed(const Duration(seconds: 2));
    ProgressBar.hide();
    NavigationService.navBack(); //if successfully completed..
    AppCustomDialogs.showInfoDialog(
      type: DialogType.success,
      message: Localization.current.visitReportSendSuccessfullyMessage,
    );
    return true;
  }

  void _validateSate() {
    state = state.copyWith(
      systems: [
        for (SystemModel system in state.systems)
          system.copyWith(
            genericKpis: [
              for (KpiModel kpi in system.genericKpis)
                ref.read(kipProvider(kpi))
            ],
          )
      ],
    );
  }
}
