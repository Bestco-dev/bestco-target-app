import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/res/constants.dart';
import '../../../../data/types/types.dart';
import '../../../../domain/entities/key_value/key_value.dart';
import '../../../../domain/entities/kpi/kpi.dart';


final kipProvider =
    StateNotifierProvider.family<_KpiViewModel, KpiModel, KpiModel>(
        (ref, model) {
  return _KpiViewModel(model);
});

class _KpiViewModel extends StateNotifier<KpiModel> {
  List<TextEditingController> controllers = [];

  _KpiViewModel(super.state) {
    if (state.measuermentType.isNumber) {
      state = state.copyWith(
          options: state.options.map((e) => e.copyWith(value: "")).toList());
    }

    controllers = List.generate(
      state.options.length,
      (i) => TextEditingController(),
    );
  }
  bool isAnswered() {
    bool isChecked = false;
    if (state.measuermentType.isNumberCounter ||
        state.measuermentType.isSingleChoice) {
      for (KpiOptionModel option in state.options) {
        if (option.value != null) {
          isChecked = true;
        }
      }
    }
    if (state.measuermentType.isNumber) {
      for (KpiOptionModel option in state.options) {
        if ("${option.value}".isNotEmpty || option.value == null) {
          isChecked = true;
        } else {
          isChecked = false;
        }
      }
    }
    return isChecked;
  }

  toggleOption(KpiOptionModel option) {
    state = state.copyWith(options: [
      for (final item in state.options)
        item.copyWith(
          value: item.key == option.key ? item.key : null,
        ),
    ]);
  }

  checkNotApplicableNumber(TextEditingController con, KpiOptionModel option) {
    state = state.copyWith(options: [
      for (final item in state.options)
        (item.key == option.key)
            ? item.copyWith(
                value: item.value == null ? "" : null,
              )
            : item
    ]);
    con.clear();
  }

  updateOptionValueAnswer(TextEditingController con,
      {required KpiOptionModel option, required String value}) {
    state = state.copyWith(
      options: [
        for (final item in state.options)
          if (item.key == option.key)
            item.copyWith(value: value.toString())
          else if (item.key == ResConstants.notApplicableKey)
            item.copyWith(value: null)
          else
            item
      ],
    );
  }

  increaseNumberCounterAnswer(TextEditingController con,
      {required KpiOptionModel option}) {
    int value = int.tryParse(option.value ?? '0') ?? 0;

    updateOptionValueAnswer(con, option: option, value: (value + 1).toString());
  }

  decreaseNumberCounterAnswer(TextEditingController con,
      {required KpiOptionModel option}) {
    int value = int.tryParse(option.value ?? '0') ?? 0;

    if (value <= 0) return;

    updateOptionValueAnswer(con, option: option, value: (value - 1).toString());
  }
}
