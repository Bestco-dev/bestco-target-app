
import 'package:faker/faker.dart';
DateTime getDate(){
  DateTime now = DateTime.now();
  final date = faker.date.dateTimeBetween(
      DateTime(now.year, now.month, now.day),
      DateTime(now.year, now.month, now.day + 4));
  return date;
}

DateTime getDateBefore(){
  DateTime now = DateTime.now();
  final date = faker.date.dateTimeBetween(
      DateTime(now.year, now.month-12, now.day),
      DateTime(now.year, now.month, now.day));
  return date;
}