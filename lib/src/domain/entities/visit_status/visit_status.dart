import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_status.freezed.dart';
part 'visit_status.g.dart';

@freezed
abstract class VisitStatusModel with _$VisitStatusModel {
  const VisitStatusModel._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory VisitStatusModel({
    required int id,
    required String name,
    @Default(false) bool done,
  }) = _VisitStatusModel;

  factory VisitStatusModel.fromJson(Map<String, dynamic> json) =>
      _$VisitStatusModelFromJson(json);


  Color get getColor =>Colors.blue;
}
