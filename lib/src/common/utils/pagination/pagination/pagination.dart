

import '../../data/parser.dart';

class PaginationPage {
  final String? next;
  final String? previous;

  PaginationPage({this.next, this.previous});

  factory PaginationPage.fromJson(Map<String, dynamic> json) => PaginationPage(
    next: json['next'],
    previous: json['previous'],
  );
}

class PaginationMeta {
  final int total;
  final int count;
  final PaginationPage page;

  PaginationMeta({
    required this.total,
    required this.count,
    required this.page,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) => PaginationMeta(
    total: json['total'] as int,
    count: json['count'] as int,
    page: PaginationPage.fromJson(json['page']),
  );

  bool get hasPage => page.next != null;
}

class Pagination<T> {
  final PaginationMeta? meta;
  final List<T> entries;

  Pagination({
    required this.entries,
    required this.meta,
  });

  bool get hasMeta => meta != null;

  bool get hasNext => hasMeta && meta!.hasPage;

  bool get endReached {
    if (!hasMeta) {
      return true;
    }
    return (entries.length + meta!.count) >= meta!.total;
  }



  factory Pagination.fromJsonList(
      List<dynamic> json, EntityListParser<T> listParser) {
    final records = listParser(json);
    return Pagination<T>(
      meta: PaginationMeta(
        total: records.length,
        count: records.length,
        page: PaginationPage(),
      ),
      entries: records,
    );
  }

  factory Pagination.fromJson(
      Map<String, dynamic> json, EntityListParser<T> listParser) =>
      Pagination<T>(
        meta: PaginationMeta.fromJson(json['meta']),
        entries: listParser(json['entries']),
      );
}
