import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../../domain/use_cases/saleperson_use_case.dart';
import '../../../domain/use_cases/visits_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';

import 'list_view_model.dart';

final visitCurdProvider = StateNotifierProvider.autoDispose
    .family<_ViewModel, VisitEntity, VisitEntity>((ref, model) {
  return _ViewModel(model, ref: ref);
});

class _ViewModel extends StateNotifier<VisitEntity> {
  final Ref ref;
  _ViewModel(super.state, {required this.ref});

  void updateDescription(String value) =>
      state = state.copyWith(description: value);

  void updateCustomer(CustomerEntity customer) {
    state = state.copyWith(customer: customer);
  }

  Future<bool> update() async {
    ProgressBar.show();
    final result = await ref
        .read(visitsRemoteUseCaseProvider)
        .update(ReqParam(url: '/saleperson/${state.id}', data: state.curdJson));
    ProgressBar.hide();
    return result.when(success: (data) {
      log("update1 done ...");
      CustomSnakeBars.showInfoSnakeBar("تم تحديث البيانات بنجاح");
      // updateDetailsAndList();
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
    // if (state.name.isEmpty) {
    //   CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال اسم المندوب");
    //   return false;
    // }
    // if (state.phone == null || state.phone!.isEmpty) {
    //   CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال رقم الهاتف");
    //   return false;
    // }
    // if (state.phone == null || state.phone!.isEmpty) {
    //   CustomSnakeBars.showErrorSnakeBar("الرحاء ادخال كلمة المرور");
    //   return false;
    // }

    ProgressBar.show();
    final result = await ref
        .read(visitsRemoteUseCaseProvider)
        .create(ReqParam(url: '', data: state.curdJson..remove("id")));
    ProgressBar.hide();
    return result.when(success: (data) {
      log("create done ...");
      ref.read(visitsListViewModelProvider.notifier).addToUi(data);
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
        .read(visitsRemoteUseCaseProvider)
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
