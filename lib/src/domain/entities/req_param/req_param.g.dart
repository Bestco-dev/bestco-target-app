// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqParamImpl _$$ReqParamImplFromJson(Map<String, dynamic> json) =>
    _$ReqParamImpl(
      url: json['url'] as String,
      action: $enumDecodeNullable(_$RequestActionEnumMap, json['action']) ??
          RequestAction.request,
      method: $enumDecodeNullable(_$RequestMethodEnumMap, json['method']) ??
          RequestMethod.get,
      offset: json['offset'] as int? ?? 0,
      limit: json['limit'] as int? ?? 20,
      data: json['data'] as Map<String, dynamic>? ?? const {},
      filePath: json['filePath'] as String?,
      paramName: json['paramName'] as String?,
    );

Map<String, dynamic> _$$ReqParamImplToJson(_$ReqParamImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'action': _$RequestActionEnumMap[instance.action]!,
      'method': _$RequestMethodEnumMap[instance.method]!,
      'offset': instance.offset,
      'limit': instance.limit,
      'data': instance.data,
      'filePath': instance.filePath,
      'paramName': instance.paramName,
    };

const _$RequestActionEnumMap = {
  RequestAction.request: 'request',
  RequestAction.report: 'report',
  RequestAction.review: 'review',
  RequestAction.accept: 'accept',
};

const _$RequestMethodEnumMap = {
  RequestMethod.get: 'get',
  RequestMethod.post: 'post',
  RequestMethod.patch: 'patch',
};
