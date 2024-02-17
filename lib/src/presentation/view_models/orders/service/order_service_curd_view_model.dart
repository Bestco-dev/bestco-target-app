import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/customer/customer.dart';
import '../../../../domain/entities/order_services/order_service_entity.dart';
import '../../../../domain/entities/question_entity/question_entity.dart';
import '../../../../domain/entities/req_param/req_param.dart';
import '../../../../domain/entities/service_main/main_service_entity.dart';
import '../../../../domain/entities/service_sub/sub_service.dart';
import '../../../../domain/use_cases/orders_prodcuts_use_case.dart';
import '../../../../domain/use_cases/orders_services_use_case.dart';
import '../../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../../custom_widgets/common/custom_progress_bar.dart';
import '../../../custom_widgets/common/snack_bars.dart';
import 'orders_service_list_view_model.dart';
import 'question_view_Model.dart';

final orderSelectedCustomerProvider =
    StateProvider.autoDispose<CustomerEntity?>((ref) {
  return null;
});
final selectedMainServiceProvider =
    StateProvider.autoDispose<MainServiceEntity?>((ref) {
  return null;
});

final selectedSubServiceProvider =
    StateProvider.autoDispose<SubServiceEntity?>((ref) {
  return null;
});

final subServiceQuestionsProvider =
    StateProvider.autoDispose<List<QuestionEntity>>((ref) {
  return [];
});

final orderServiceViewModelProvider =
    StateNotifierProvider.autoDispose<_StateNotifier, OrderServiceEntity?>(
        (ref) {
  return _StateNotifier(ref);
});

class _StateNotifier extends StateNotifier<OrderServiceEntity?> {
  final Ref ref;
  _StateNotifier(
    this.ref,
  ) : super(null);

  Future<bool> create() async {
    CustomerEntity? customer = ref.read(orderSelectedCustomerProvider);
                                        // orderSelectedCustomerViewModel
    if (customer?.id == -1 || customer == null) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء اضافة العميل");
      return false;
    }

    ProgressBar.show();
    final result = await ref
        .read(ordersServiceRemoteUseCaseProvider)
        .create(ReqParam(url: "/create"));
    ProgressBar.hide();

    return result.when(
      success: (data) {
        ref
            .read(ordersServicesListViewModelProvider(null).notifier)
            .addToUi(data);

        AppCustomDialogs.showInfoDialog(
          type: DialogType.success,
          message: "تم اضافة الطلب بنحاح",
        );
        return true;
      },
      failure: (error) {
        AppCustomDialogs.showInfoDialog(
          type: DialogType.error,
          message: error.message,
        );
        return false;
      },
    );

    return false;
  }

  List<QuestionEntity> _answers() {
    final questionsList = ref.read(subServiceQuestionsProvider);
    List<QuestionEntity> answers = [];
    for (final question in questionsList) {
      answers.add(ref.read(questionProvider(question)).copyWith());
    }
    return answers;
  }

  List<Map<String, dynamic>> _answersAsMap() {
    return _answers()
        .map(
          (e) => e.toJson()
            ..remove("values")
            ..remove('title'),
        )
        .toList();
  }

  int _mainServiceId() {
    return ref.read(selectedMainServiceProvider)!.id;
  }

  int _subServiceId() {
    return ref.read(selectedSubServiceProvider)!.id;
  }

  int _customerServiceId() {
    return ref.read(orderSelectedCustomerProvider)!.id;
  }
}
