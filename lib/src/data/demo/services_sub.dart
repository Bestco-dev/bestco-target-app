import 'package:faker/faker.dart';

import '../../domain/entities/service_sub/sub_service.dart';
import '../types/types_enums.dart';
import 'question_demo.dart';

SubServiceEntity getSubService() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(ProductType.values);
  return SubServiceEntity(
    id: id,
    name: name,
    questions: getQuestionsList(length: 4),
  );
}

List<SubServiceEntity> getSubServiceList({int length = 50}) {
  final list = <SubServiceEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getSubService());
  }
  return list;
}

List<Map<String, dynamic>> mockSubServiceDataResponse({int length = 50}) {
  final list = getSubServiceList();
  return list.map((e) => e.toJson()).toList();
}
