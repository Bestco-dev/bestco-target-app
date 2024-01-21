// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitStatusModel _$$_VisitStatusModelFromJson(Map<String, dynamic> json) =>
    _$_VisitStatusModel(
      id: json['id'] as int,
      name: json['name'] as String,
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VisitStatusModelToJson(_$_VisitStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };
