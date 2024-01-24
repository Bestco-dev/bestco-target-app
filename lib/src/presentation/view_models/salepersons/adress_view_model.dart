import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/key_valu_option/key_value_option.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/address_use_case.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import 'curd_view_model.dart';
import 'details_view_model.dart';
import 'list_view_model.dart';

final salepersonAddressDetailsProvider = StateProvider<UiState<AddressModel>>((ref) {
  return const UiState.initial();
});

final addressCurdProvider = StateNotifierProvider.autoDispose
    .family<_ViewModel, AddressModel, AddressModel>((ref, model) {
  return _ViewModel(model, ref: ref);
});

class _ViewModel extends StateNotifier<AddressModel> {
  final Ref ref;

  _ViewModel(super.state, {required this.ref});
  void updateCountry(KeyValueOptionEntity? value) =>
      state = state.copyWith(country: value);
  void updateState(KeyValueOptionEntity? value) =>
      state = state.copyWith(state: value);
  void updateCity(String? value) => state = state.copyWith(city: value);
  void updateStreet(String value) => state = state.copyWith(street: value);
  void updateDescription(String value) =>
      state = state.copyWith(description: value);

  Future<bool> update() async {
    ProgressBar.show();
    final result = await ref
        .read(addressRemoteUseCaseProvider)
        .update(ReqParam(url: '', data: state.toJson()));
    ProgressBar.hide();
    return result.when(success: (data) {
      log("update1 done ...");
      ref.read(salepersonAddressDetailsProvider.notifier).state =
          UiState.data(data: state);
      ref.read(salepersonDetailsProvider).maybeWhen(
          orElse: () {},
          data: (saleperson) {
            ref.read(salepersonDetailsProvider.notifier).state =
                UiState.data(data: saleperson.copyWith(address: state));
            ref
                .read(salepersonCurdProvider(saleperson).notifier)
                .updateAddress(state);
            ref
                .read(salepersonCurdProvider(saleperson).notifier)
                .updateDetailsAndList();
          });
      return true;
    }, failure: (error) {
      log("update Error ...");
      return false;
    });
  }
}
