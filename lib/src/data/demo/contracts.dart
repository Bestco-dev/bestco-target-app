import 'dart:math';

import 'package:faker/faker.dart';

import '../../domain/entities/contract/contract_entity.dart';

List<String> contractNames = [
  "Fire Detection and Alarm Systems maintenance contract",
  "Water Storage Tanks Systems maintenance contract",
  "Fire Pumps Systems maintenance contract",
  "Private Fire Service Mains Systems maintenance contract"
];
ContractEntity getContract() {
  final id = faker.randomGenerator.integer(5000);
  final name = contractNames[Random().nextInt(contractNames.length)];
  // final name = "${faker.company.name()} ${faker.company.name()}";
  return ContractEntity(
      id: id,
      name: name,
      expirationDate: faker.date.dateTimeBetween(
          DateTime.now().add(const Duration(days: 90)), DateTime(2026)));
}

List<ContractEntity> getContracts({int length = 3}) {
  final list = <ContractEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getContract());
  }
  return list;
}

List<Map<String, dynamic>> mockCustomersDataResponse({int length = 50}) {
  final list = getContracts(length: 50);
  return list.map((e) {
    return e.toJson();
  }).toList();
}
