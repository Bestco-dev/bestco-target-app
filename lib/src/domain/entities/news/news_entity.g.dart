// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsEntityImpl _$$NewsEntityImplFromJson(Map<String, dynamic> json) =>
    _$NewsEntityImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      imageUrl: json['image_url'] as String?,
      description: json['description'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$NewsEntityImplToJson(_$NewsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
    };
