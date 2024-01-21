import 'package:freezed_annotation/freezed_annotation.dart';


class NullableDatetime implements JsonConverter<DateTime?, String?> {
  const NullableDatetime();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    if (DateTime.parse(json).isUtc) {
      return DateTime.parse(json);
    }
    return null;
  }

  @override
  String? toJson(DateTime? object) => object?.toUtc().toString();
}