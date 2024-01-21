import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_range.freezed.dart';


@freezed
abstract class DateRangeModel with _$DateRangeModel {
  const DateRangeModel._();
  const factory DateRangeModel({
    DateTime? startDate,
    DateTime? endDate,
  }) = _DateRangeModel;

  DateTime get getStartDate=>startDate??DateTime.now();
  DateTime get getEndDate=>startDate??DateTime.now();
}