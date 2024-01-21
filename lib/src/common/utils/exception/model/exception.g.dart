// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExceptionModel _$$_ExceptionModelFromJson(Map<String, dynamic> json) =>
    _$_ExceptionModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      errors: json['errors'],
    );

Map<String, dynamic> _$$_ExceptionModelToJson(_$_ExceptionModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };
