Map<String, dynamic> _removeNullsFromMap(Map<String, dynamic> json) => json
  ..removeWhere((String key, dynamic value) => value == null)
  ..map<String, dynamic>((key, value) => MapEntry(key, removeNulls(value)));

List _removeNullsFromList(List list) => list
  ..removeWhere((value) => value == null)
  ..map((e) => removeNulls(e)).toList();

removeNulls(e) => (e is List)
    ? _removeNullsFromList(e)
    : (e is Map<String, dynamic> ? _removeNullsFromMap(e) : e);

extension ListExtension on List {
  List removeNulls() => _removeNullsFromList(this);
}

extension MapExtension on Map<String, dynamic> {
  Map<String, dynamic> removeNulls() => _removeNullsFromMap(this);
}
