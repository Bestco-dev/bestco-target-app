import 'package:faker/faker.dart';

import '../../domain/entities/visits/visits_entity.dart';
import 'customers.dart';
import 'date.dart';

VisitEntity getVisit() {
  final description = faker.lorem.words(20).join(' ');
  final id = faker.randomGenerator.integer(5000);
  return VisitEntity(
    id: id,
    date: getDateBefore(),
    customer: getCustomer(),
    description: description,
  );
}

List<VisitEntity> getVisitsList({int length = 50}) {
  final list = <VisitEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getVisit());
  }
  return list;
}
