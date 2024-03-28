import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types.dart';
import '../../../data/types/types_enums.dart';

part 'time_model.freezed.dart';
part 'time_model.g.dart';

@freezed
abstract class TimeModel with _$TimeModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TimeModel({
    required String time,
    @Default(TimeType.am) TimeType type,
  }) = _TimeModel;

  factory TimeModel.fromJson(Map<String, dynamic> json) =>
      _$TimeModelFromJson(json);
}
