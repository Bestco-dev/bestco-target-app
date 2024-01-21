// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceEntity _$$_InvoiceEntityFromJson(Map<String, dynamic> json) =>
    _$_InvoiceEntity(
      id: json['id'] as int,
      sequenceNumber: json['sequence_number'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_InvoiceEntityToJson(_$_InvoiceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence_number': instance.sequenceNumber,
      'date': instance.date.toIso8601String(),
    };
