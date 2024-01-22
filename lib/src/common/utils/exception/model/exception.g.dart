// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExceptionModelImpl _$$ExceptionModelImplFromJson(Map<String, dynamic> json) =>
    _$ExceptionModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      errors: json['errors'],
    );

Map<String, dynamic> _$$ExceptionModelImplToJson(
        _$ExceptionModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };
