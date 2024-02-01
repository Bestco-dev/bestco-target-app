import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../../domain/use_cases/saleperson_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';
import 'details_view_model.dart';
import 'list_view_model.dart';

final salepersonCurdProvider = StateNotifierProvider.autoDispose
    .family<_ViewModel, SalePersonEntity, SalePersonEntity>((ref, model) {
  return _ViewModel(model, ref: ref);
});

class _ViewModel extends StateNotifier<SalePersonEntity> {
  final Ref ref;
  _ViewModel(super.state, {required this.ref});
  void updateName(String value) => state = state.copyWith(name: value);

  void updatePhone(String value) => state = state.copyWith(phone: value);
  void updatePassword(String value) => state = state.copyWith(password: value);
  void updateNationalId(String value) =>
      state = state.copyWith(nationalId: value);
  void updateEmail(String value) => state = state.copyWith(email: value);

  void updateDescription(String value) =>
      state = state.copyWith(description: value);

  void updateAddress(AddressModel address) =>
      state = state.copyWith(address: address);

  void updateDetailsAndList() {
    ref.read(salepersonDetailsProvider.notifier).state =
        UiState.data(data: state);
    ref.read(salepersonListViewModelProvider.notifier).updateToUi(state);
  }

  Future<bool> update() async {
    ProgressBar.show();
    final result = await ref
        .read(customersRemoteUseCaseProvider)
        .update(ReqParam(url: '/saleperson/${state.id}', data: state.curdJson));
    ProgressBar.hide();
    return result.when(success: (data) {
      log("update1 done ...");
      CustomSnakeBars.showInfoSnakeBar("تم تحديث البيانات بنجاح");
      updateDetailsAndList();
      return true;
    }, failure: (error) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.error,
        message: error.message,
      );
      log("update Error ...");
      return false;
    });
  }

  Future<bool> create() async {
    if (state.name.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال اسم المندوب");
      return false;
    }
    if (state.phone == null || state.phone!.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال رقم الهاتف");
      return false;
    }
    if (state.phone == null || state.phone!.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("الرحاء ادخال كلمة المرور");
      return false;
    }

    ProgressBar.show();
    final result = await ref
        .read(salepersonsRemoteUseCaseProvider)
        .create(ReqParam(url: '', data: state.curdJson..remove("id")));
    ProgressBar.hide();
    return result.when(success: (data) {
      log("create done ...");
      ref.read(salepersonListViewModelProvider.notifier).addToUi(data);
      AppCustomDialogs.showInfoDialog(
        type: DialogType.success,
        message: "تم اضافة المندوب بنجاح",
      );
      return true;
    }, failure: (error) {
      // error.isUnauthorisedRequest;
      AppCustomDialogs.showInfoDialog(
        type: DialogType.error,
        message: error.message,
      );
      log("create Error ...");
      return false;
    });
  }

  Future<bool> delete() async {
    ProgressBar.show();
    final result = await ref
        .read(customersRemoteUseCaseProvider)
        .delete(ReqParam(url: '', data: state.toJson()));
    ProgressBar.hide();
    return result.when(success: (data) {
      log("delete done ...");
      return true;
    }, failure: (error) {
      log("delete Error ...");
      return false;
    });
  }
}
