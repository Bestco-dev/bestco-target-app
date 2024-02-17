// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubServiceEntityImpl _$$SubServiceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubServiceEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => QuestionEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SubServiceEntityImplToJson(
        _$SubServiceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'questions': instance.questions.map((e) => e.toJson()).toList(),
    };
