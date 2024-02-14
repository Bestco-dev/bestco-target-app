import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';

part 'question_entity.freezed.dart';
part 'question_entity.g.dart';

@freezed
abstract class QuestionEntity with _$QuestionEntity {
  const QuestionEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory QuestionEntity({
    required int id,
    required String title,
    dynamic values,
    dynamic answer,
    required QuestionType type,
  }) = _QuestionEntity;

  factory QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$QuestionEntityFromJson(json);

  List<String> get valuesStrings => (values as List<String>);
}
