import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/extensions/map.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/guest/guest_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';

final joinUsProvider =
    StateNotifierProvider.autoDispose<_ViewModel, GuestEntity>((ref) {
  return _ViewModel(const GuestEntity(name: '', phone: ''), ref: ref);
});

class _ViewModel extends StateNotifier<GuestEntity> {
  final Ref ref;
  _ViewModel(super.state, {required this.ref});
  void updateName(String value) => state = state.copyWith(name: value);
  void updateType(UserType value) => state = state.copyWith(type: value);
  void updatePhone(String value) => state = state.copyWith(phone: value);
  void updateCity(String value) => state = state.copyWith(city: value);

  void updateExperienceYears(String value) =>
      state = state.copyWith(experienceYears: double.tryParse(value));

  Future<bool> create() async {
    if (state.name.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال اسم العميل");
      return false;
    }
    if (state.phone.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال رقم الهاتف");
      return false;
    }
    if (state.experienceYears == null) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء ادخال سنوات الخبرة");
      return false;
    }
    ProgressBar.show();
    final result =
        await ref.read(customersRemoteUseCaseProvider).create(ReqParam(
              url: '/customer',
              data: state.toJson()..removeNulls,
            ));
    ProgressBar.hide();
    return result.when(success: (data) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.success,
        message: "تم رفع الطلب بنجاح",
      );
      return true;
    }, failure: (error) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.error,
        message: error.message,
      );
      log("create Error ...");
      return false;
    });
  }
}
