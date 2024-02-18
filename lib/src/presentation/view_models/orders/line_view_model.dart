import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/extensions/numbers.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';

final lineViewModelProvider = StateNotifierProvider.family<_StateNotifier,
    OrderLineEntity, OrderLineEntity>((ref, model) {
  return _StateNotifier(model);
});

class _StateNotifier extends StateNotifier<OrderLineEntity> {
  _StateNotifier(super._state);

  final amountTextFieldController = TextEditingController();
  final qtnTextFieldController = TextEditingController();

  bool get canBeDelete => state.qtn <= 1;

  updateQtnPlus() => updateQtn((state.qtn) + 1, isPlusOrMinus: true);
  updateQtnMinus() =>
      updateQtn((state.qtn) > 1 ? (state.qtn) - 1 : 0, isPlusOrMinus: true);
  updateQtn(double qtn, {bool isPlusOrMinus = false}) {
    if (qtn < 1) {
      qtn = 1;
    }
    state = state.copyWith(qtn: qtn);
    amountTextFieldController.text = (qtn * state.product.price).toPriceFormat;
    if (isPlusOrMinus) {
      qtnTextFieldController.text = qtn.toPriceFormat;
    }
  }

  updateAmount(String price) {
    double priceAfterSubTax = double.tryParse(price.trim()) ?? 0;
    // print("price is $price");
    // if (priceAfterSubTax == 0) return;
    //
    // if (priceAfterSubTax > 0) {
    //   priceAfterSubTax = (priceAfterSubTax - (priceAfterSubTax * .15));
    // }
    double newQtn = priceAfterSubTax / (state.product.price);

    // updateQtn(newQtn < 1 ? 1 : newQtn);

    state = state.copyWith(qtn: newQtn < 0 ? 1 : newQtn);

    qtnTextFieldController.text = "${newQtn < 1 ? 1 : newQtn.toPriceFormat}";
  }

  updateUnitPrice(String price) =>
      state = state.copyWith(priceUnit: double.tryParse(price.trim()) ?? 0);
}
