// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitDescription _$$_VisitDescriptionFromJson(Map<String, dynamic> json) =>
    _$_VisitDescription(
      description: json['description'] as String? ?? '',
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      voiceRecords: (json['voice_records'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VisitDescriptionToJson(_$_VisitDescription instance) =>
    <String, dynamic>{
      'description': instance.description,
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'voice_records': instance.voiceRecords.map((e) => e.toJson()).toList(),
    };
