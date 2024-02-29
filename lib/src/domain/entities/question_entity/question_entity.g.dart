// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionEntityImpl _$$QuestionEntityImplFromJson(Map<String, dynamic> json) =>
    _$QuestionEntityImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      values: json['value'],
      answer: json['answer'],
      type: $enumDecode(_$QuestionTypeEnumMap, json['question_type']),
    );

Map<String, dynamic> _$$QuestionEntityImplToJson(
        _$QuestionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'value': instance.values,
      'answer': instance.answer,
      'question_type': _$QuestionTypeEnumMap[instance.type]!,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.text_box: 'text_box',
  QuestionType.char_box: 'char_box',
  QuestionType.numerical_box: 'numerical_box',
  QuestionType.date: 'date',
  QuestionType.dateTime: 'dateTime',
  QuestionType.simple_choice: 'simple_choice',
  QuestionType.multiple_choice: 'multiple_choice',
};
