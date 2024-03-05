// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceEntityImpl _$$InvoiceEntityImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$InvoiceEntityImplToJson(_$InvoiceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
    };
