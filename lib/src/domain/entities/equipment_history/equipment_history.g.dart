// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EquipmentHistoryModel _$$_EquipmentHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_EquipmentHistoryModel(
      date: DateTime.parse(json['date'] as String),
      kpis: (json['kpis'] as List<dynamic>?)
              ?.map((e) => KpiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EquipmentHistoryModelToJson(
        _$_EquipmentHistoryModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'kpis': instance.kpis.map((e) => e.toJson()).toList(),
    };
