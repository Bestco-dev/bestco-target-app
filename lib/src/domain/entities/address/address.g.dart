// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: json['id'] as int? ?? 0,
      country: json['country'] == null
          ? null
          : KeyValueOptionEntity.fromJson(
              json['country'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : KeyValueOptionEntity.fromJson(
              json['state'] as Map<String, dynamic>),
      city: json['city'] as String?,
      street: json['street'] as String?,
      description: json['description'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'street': instance.street,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
