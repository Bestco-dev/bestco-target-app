import 'package:faker/faker.dart';

import '../../domain/entities/service_main/main_service_entity.dart';
import '../types/types_enums.dart';

MainServiceEntity getMainServices() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(MainServiceType.values);
  return MainServiceEntity(
    id: id,
    name: name,
    type: type,

  );
}

List<MainServiceEntity> getMainServiceList({int length = 50}) {
  final list = <MainServiceEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getMainServices());
  }
  return list;
}

List<Map<String, dynamic>> mockMainServiceDataResponse({int length = 50}) {
  final list = getMainServiceList();
  return list.map((e) => e.toJson()).toList();
}
