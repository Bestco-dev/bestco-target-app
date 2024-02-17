import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/use_cases/orders_prodcuts_use_case.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';
import 'line_view_model.dart';
import 'orders_products_list_view_model.dart';

final orderViewModelProvider = StateNotifierProvider.family
    .autoDispose<_StateNotifier, OrderEntity, OrderEntity?>((ref, model) {
  return _StateNotifier(
      model ?? OrderEntity(id: -1, date: DateTime.now()), ref);
});

class _StateNotifier extends StateNotifier<OrderEntity> {
  final Ref ref;
  _StateNotifier(
    state,
    this.ref,
  ) : super(state);

  bool get hasLines => state.lines.isNotEmpty;
  bool get hasOneLine => state.lines.length == 1;
  bool get hasMoreThanOneLine => state.lines.length > 1;
  int get lineCount => state.lines.length;

  Future<bool> confirmOrder() async {
    if (validCartModel.lines.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("لا توجد منتجات");
      return false;
    }
    if (validCartModel.customer?.id == -1 || validCartModel.customer == null) {
      CustomSnakeBars.showErrorSnakeBar("الرجاء اضافة العميل");
      return false;
    }
    final lines =
        validCartModel.lines.map((e) => e.toJson()..remove("product")).toList();
    final data = validCartModel.toJson()
      ..remove("lines")
      ..remove('customer')
      ..remove("id")
      ..addAll({"customer_id": validCartModel.customer?.id, "lines": lines});

    ProgressBar.show();
    final result = await ref
        .read(ordersProductsRemoteUseCaseProvider)
        .create(ReqParam(url: "/create"));
    ProgressBar.hide();

    return result.when(
      success: (data) {
        for (final line in state.lines) {
          ref.invalidate(lineViewModelProvider(getLine(line.product)));
        }
        ref.invalidate(orderViewModelProvider);

        ref
            .read(ordersProductsListViewModelProvider(null).notifier)
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
  }

  void cancelOrder() async {
    ref.invalidate(orderViewModelProvider);
  }

  void addLine(ProductEntity product) {
    if (!isProductOnCart(product)) {
      state = state.copyWith(
        lines: [getLine(product), ...state.lines],
      );
    }
  }

  void removeLine(ProductEntity product) {
    ref.invalidate(lineViewModelProvider(getLine(product)));
    state = state.copyWith(lines: [
      for (OrderLineEntity line in state.lines)
        if (line.product.id != product.id) line
    ]);
  }

  // void updatePaymentMethod(PaymentMethodEnum method) {
  //   state = state.copyWith(paymentMethod: method);
  // // }
  //
  // void updateOrderType(OrderTypeEnum type) {
  //   state = state.copyWith(type: type);
  // }

  void updateOrderCustomer(CustomerEntity customer) {
    state = state.copyWith(customer: customer);
  }

  bool isProductOnCart(ProductEntity product) {
    for (OrderLineEntity line in state.lines) {
      if (line.product.id == product.id) return true;
    }
    return false;
  }

  bool validateLines() {
    bool isValid = isAllLinesAreValid();
    if (!isValid) {
      AppCustomDialogs.showInfoDialog(
        type: DialogType.error,
        message: "توجد مشكلة في الكميات",
      );
    }
    return isValid;
  }

  void validateCart() {
    state = state.copyWith(
      lines: [
        ...state.lines
            .map((line) => ref.read(lineViewModelProvider(line)))
            .toList()
      ],
    );
  }

  OrderEntity get validCartModel => state.copyWith(
        lines: [
          ...state.lines
              .map((line) => ref.read(lineViewModelProvider(line)))
              .toList()
        ],
      );

  bool isAllLinesAreValid() {
    for (OrderLineEntity line in state.lines) {
      final lineModel = ref.read(lineViewModelProvider(line));
      if (lineModel.price <= 0) return false;
    }
    return true;
  }

  OrderLineEntity getLine(ProductEntity product) {
    for (OrderLineEntity line in state.lines) {
      if (line.product.id == product.id) return line;
    }
    return OrderLineEntity(
      id: product.id,
      // id: product.id,
      product: product,
      // unitPrice: 0,
      price: product.price,
    );
  }
}
