
import '../extensions/strings.dart';

typedef EntityParser<T> = T Function(Map<String, dynamic> data);

typedef EntityListParser<T> = List<T> Function(List<dynamic> data);

class DataParser<T> {
  Future<List<T>?> parse(dynamic json, EntityParser<T> parser) async {
    if (json == null) {
      return null;
    }
    if (json is String) {
      return null;
    }
    final type = json.runtimeType.toString();
    if (!type.validMap) {
      return null;
    }
    if (type == 'List<dynamic>') {
      return _parseDataList(json, parser);
    }

    return _parseDataPagination(json, parser);
  }

  Future<List<T>> _parseDataPagination(
      List<dynamic> json, EntityParser<T> parser) async {
    final List<T> records = [];
    for (final record in json) {
      records.add(parser(record));
    }
    return records;
  }

  Future<List<T>> _parseDataList(
      List<dynamic> json, EntityParser<T> parser) async {
    final List<T> records = [];
    for (final record in json) {
      records.add(parser(record));
    }
    return records;
  }
}
