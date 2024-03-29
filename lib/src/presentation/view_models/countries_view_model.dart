import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/address_repo_impl.dart';
import '../../domain/entities/key_valu_option/key_value_option.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/ui_state/ui_state.dart';

final countriesProvider =
    StateNotifierProvider<_Notifier, UiState<List<KeyValueOptionEntity>>>(
        (ref) {
  return _Notifier(ref: ref);
});

class _Notifier extends StateNotifier<UiState<List<KeyValueOptionEntity>>> {
  Ref ref;
  _Notifier({required this.ref}) : super(const UiState.initial()) {
    load();
  }

  load() async {
    state = const UiState.loading();
    // await 3.delay();
    final res = await ref.read(addressRemoteRepositoryProvider).loadOptions(
          ReqParam(url: '/countries'),
        );

    state = res.when(
        success: (data) => UiState.data(data: data),
        failure: (error) => UiState.error(error: error));
  }
}
