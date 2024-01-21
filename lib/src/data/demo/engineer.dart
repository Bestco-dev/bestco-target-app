import 'dart:math';

import 'package:faker/faker.dart';

import '../../domain/entities/engineer/engineer_entity.dart';
import 'images.dart';


List<String> usersName = [
  "Fahad Al-Saud",
  "Abdulaziz Al-Ghamdi",
  "Saad Al-Harbi",
  "Sultan Al-Zahrani",
];


EngineerEntity getEngineer() {
  final id = faker.randomGenerator.integer(5000);
  final name = usersName[Random().nextInt(usersName.length)];
  // final name = "${faker.company.name()} ${faker.company.name()}";
  final phone = faker.phoneNumber.us();

  return EngineerEntity(
    id: id,
    name: name,
    phone: phone,
    avatarUrl: FakeImages.randomImage(isUser: true),
  );
}

List<EngineerEntity> getEngineers({int length = 3}) {
  final list = <EngineerEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getEngineer());
  }
  return list;
}

List<Map<String, dynamic>> mockEngineersDataResponse({int length = 50}) {
  final list = getEngineers(length: 15);
  return list.map((e) {
    return e.toJson();
  }).toList();
}
