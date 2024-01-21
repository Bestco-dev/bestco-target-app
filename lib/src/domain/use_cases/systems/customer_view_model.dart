import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../entities/system/system.dart';
import '../customers/load_one_system_use_case.dart';

final systemsViewModelProvider =
    StateNotifierProvider<VisitsViewModel, UiState<SystemModel>>(
        (ref) => VisitsViewModel(ref: ref));

class VisitsViewModel extends StateNotifier<UiState<SystemModel>> {
  final Ref ref;

  VisitsViewModel({required this.ref}) : super(const UiState.initial());

  load(int id) async {
    state = const UiState.loading();
    final result = await ref
        .read(loadOneSystemUseCaseProvider)
        .call(ReqParam(
          url: "/customer",
        ))
        ;

    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }
}
