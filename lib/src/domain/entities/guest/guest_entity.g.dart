// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestEntityImpl _$$GuestEntityImplFromJson(Map<String, dynamic> json) =>
    _$GuestEntityImpl(
      name: json['name'] as String,
      phone: json['phone'] as String,
      experienceYears: (json['experience_years'] as num?)?.toDouble(),
      city: json['city'] as String?,
      type: $enumDecodeNullable(_$UserTypeEnumMap, json['type']) ??
          UserType.saleperson,
    );

Map<String, dynamic> _$$GuestEntityImplToJson(_$GuestEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'experience_years': instance.experienceYears,
      'city': instance.city,
      'type': _$UserTypeEnumMap[instance.type]!,
    };

const _$UserTypeEnumMap = {
  UserType.saleperson: 'saleperson',
  UserType.supervisor: 'supervisor',
  UserType.admin: 'admin',
};
