import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types.dart';

part 'work_sheet.freezed.dart';
part 'work_sheet.g.dart';

@freezed
abstract class WorkSheetModel with _$WorkSheetModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WorkSheetModel({
    required String data,
    required WorksheetType worksheetType,
  }) = _WorkSheetModel;

  factory WorkSheetModel.fromJson(Map<String, dynamic> json) =>
      _$WorkSheetModelFromJson(json);
}