import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/extensions/datetime.dart';
import '../../../common/utils/extensions/numbers.dart';

part 'target_entity.freezed.dart';
part 'target_entity.g.dart';

@freezed
abstract class TargetEntity with _$TargetEntity {
  const TargetEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TargetEntity({
    DateTime? date,
    @Default(0) double target,
    @Default(0) double achieved,
    @Default(0) double commission,
  }) = _TargetEntity;

  factory TargetEntity.fromJson(Map<String, dynamic> json) =>
      _$TargetEntityFromJson(json);

  String get getDate => (date ?? DateTime.now()).toTodayDisplay;

  double get percentage=>((achieved/target)*100).toDouble().roundTo2Decimal;
}
