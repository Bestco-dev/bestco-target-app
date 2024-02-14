// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_service_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderServiceEntityImpl _$$OrderServiceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderServiceEntityImpl(
      id: json['id'] as int? ?? 0,
      customer: json['customer'] == null
          ? null
          : CustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
      mainService: MainServiceEntity.fromJson(
          json['main_service'] as Map<String, dynamic>),
      subService: SubServiceEntity.fromJson(
          json['sub_service'] as Map<String, dynamic>),
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => QuestionEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderServiceEntityImplToJson(
        _$OrderServiceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer?.toJson(),
      'main_service': instance.mainService.toJson(),
      'sub_service': instance.subService.toJson(),
      'questions': instance.questions.map((e) => e.toJson()).toList(),
    };
