import 'package:faker/faker.dart';

import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/service_main/main_service_entity.dart';
import '../types/types_enums.dart';
import 'images.dart';

MainServiceEntity getSubServices() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(ProductType.values);
  return MainServiceEntity(
    id: id,
    name: name,

  );
}

List<MainServiceEntity> getSubServiceList({int length = 50}) {
  final list = <MainServiceEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getSubServices());
  }
  return list;
}

List<Map<String, dynamic>> mockSubServiceDataResponse({int length = 50}) {
  final list = getSubServiceList();
  return list.map((e) => e.toJson()).toList();
}
