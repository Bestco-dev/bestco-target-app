import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/res/constants.dart';
import '../../../../common/utils/extensions/globlas.dart';
import '../../../../data/types/types.dart';
import '../../../../data/types/types_enums.dart';
import '../../../../domain/entities/key_value/key_value.dart';
import '../../../../domain/entities/question_entity/question_entity.dart';

final questionProvider =
    StateNotifierProvider.family<_KpiViewModel, QuestionEntity, QuestionEntity>(
        (ref, model) {
  return _KpiViewModel(model);
});

class _KpiViewModel extends StateNotifier<QuestionEntity> {
  _KpiViewModel(super.state);



  makeAnswer(dynamic value) {
    print(value);
    value = value.toString().trim();
    switch (state.type) {
      case QuestionType.simple_choice:
        _toggleOption(value);
        return;
      case QuestionType.multiple_choice:
        _checkOption(value);
        return;
      default:
        _updateTextValue(value);
    }
  }

  _toggleOption(dynamic option) {
    print(option);
    state = state.copyWith(answer: option);
  }

  _checkOption(dynamic option) {
    print(option);
    List answers = (((state.answer) as List?) ?? []);
    if (answers.contains(option)) {
      print("conatin");
      answers.remove(option);
    } else {
      print("not conatin");
      answers.add(option);
    }
    print(answers);
    state = state.copyWith(answer: answers);
  }

  _updateTextValue(String value) {
    state = state.copyWith(answer: value);
  }
}
