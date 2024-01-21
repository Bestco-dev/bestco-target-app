import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';
part 'exception.g.dart';

/// Handles [Exception] and [Error] fails
///
/// [type] represents type of operation when exception/error occurs.
/// [code] each source of exception/error has code, used to display to user.
/// [isError] represent type of fail is [Exception] or [Error]

@freezed
class ExceptionModel with _$ExceptionModel implements Exception {
  const ExceptionModel._(); // Added constructor
  factory ExceptionModel({
    int? code,
    String? message,
    dynamic errors,
  }) = _ExceptionModel;

  factory ExceptionModel.fromJson(Map<String, dynamic> json) =>
      _$ExceptionModelFromJson(json);

  String get msg {
    return message ?? '';
  }
}
