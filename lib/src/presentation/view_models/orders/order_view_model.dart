import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/snack_bars.dart';
import 'line_view_model.dart';

final orderViewModelProvider =
    StateNotifierProvider<_StateNotifier, OrderEntity>((ref) {
  return _StateNotifier(ref);
});

class _StateNotifier extends StateNotifier<OrderEntity> {
  final Ref ref;
  _StateNotifier(
    this.ref,
  ) : super(OrderEntity(id: -1));

  bool get hasLines => state.lines.isNotEmpty;
  bool get hasOneLine => state.lines.length == 1;
  bool get hasMoreThanOneLine => state.lines.length > 1;
  int get lineCount => state.lines.length;

  Future<bool> confirmOrder() async {
    if (validCartModel.lines.isEmpty) {
      CustomSnakeBars.showErrorSnakeBar("لا توجد منتجات");
      return false;
    }
    const check=true;
    // final bool check =
    //     await ref.read(ordersViewModelProvider.notifier).createOrder(
    //           validCartModel,
    //         );
    if (check) {
      for (final line in state.lines) {
        ref.invalidate(lineViewModelProvider(getLine(line.product)));
      }
      ref.invalidate(orderViewModelProvider);
    }

    return check;
  }

  void cancelOrder() async {
    ref.invalidate(orderViewModelProvider);
  }

  void addLine(ProductEntity product) {
    state = state.copyWith(
      lines: [getLine(product), ...state.lines],
    );
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
