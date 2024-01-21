import '../data/parser.dart';
import '../extensions/strings.dart';
import 'pagination/pagination.dart';

class PaginationParser<T> {
  Future<Pagination<T>?> parseList(dynamic json, EntityParser<T> parser) async {
    if (json == null) {
      return null;
    }
    if (json is String) {
      return null;
    }
    final type = json.runtimeType.toString();

    if (!type.validList) {
      return null;
    }

    return Pagination.fromJsonList(
        json, (data) => _parseDataList(data, parser));
  }

  Future<Pagination<T>?> parse(dynamic json, EntityParser<T> parser) async {
    if (json == null ||
        json is String ||
        !json.runtimeType.toString().validMap) {
      return null;
    }

    return Pagination.fromJson(json, (data) => _parseDataList(data, parser));
  }

  List<T> _parseDataList(List<dynamic> json, EntityParser<T> parser) {
    final List<T> records = [];

    for (final record in json) {
      records.add(parser(record));
    }
    return records;
  }
}
