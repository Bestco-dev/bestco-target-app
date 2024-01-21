// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkSheetModel _$$_WorkSheetModelFromJson(Map<String, dynamic> json) =>
    _$_WorkSheetModel(
      data: json['data'] as String,
      worksheetType:
          $enumDecode(_$WorksheetTypeEnumMap, json['worksheet_type']),
    );

Map<String, dynamic> _$$_WorkSheetModelToJson(_$_WorkSheetModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'worksheet_type': _$WorksheetTypeEnumMap[instance.worksheetType]!,
    };

const _$WorksheetTypeEnumMap = {
  WorksheetType.pdf: 'pdf',
  WorksheetType.googleSlide: 'googleSlide',
  WorksheetType.text: 'text',
};
