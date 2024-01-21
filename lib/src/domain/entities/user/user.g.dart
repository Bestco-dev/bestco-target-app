// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      jobTitle: json['jobTitle'] as String,
      company: CompanyEntity.fromJson(json['company'] as Map<String, dynamic>),
      scheduledVisitsCount: json['scheduledVisitsCount'] as int? ?? 0,
      maintenanceVisitsCount: json['maintenanceVisitsCount'] as int? ?? 0,
      emergencyVisitsCount: json['emergencyVisitsCount'] as int? ?? 0,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'jobTitle': instance.jobTitle,
      'company': instance.company,
      'scheduledVisitsCount': instance.scheduledVisitsCount,
      'maintenanceVisitsCount': instance.maintenanceVisitsCount,
      'emergencyVisitsCount': instance.emergencyVisitsCount,
      'email': instance.email,
      'phone': instance.phone,
      'avatarUrl': instance.avatarUrl,
      'lang': instance.lang,
    };
