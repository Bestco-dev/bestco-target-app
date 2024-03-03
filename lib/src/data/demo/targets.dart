import 'package:faker/faker.dart';

import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/target/target_entity.dart';
import '../types/types_enums.dart';
import 'date.dart';
import 'images.dart';

TargetEntity getTarget() {
  final target = faker.randomGenerator.integer(30000,min: 1000);
  final commission = faker.randomGenerator.integer(15000,min: 1000);
  final achieved = faker.randomGenerator.integer(30000,min: 1000);

  return TargetEntity(
    date: getDate(),
    commission:commission.toDouble(),
    achieved: achieved.toDouble(),
    target: target.toDouble(),

  );
}

List<TargetEntity> getTargetsList({int length = 50}) {
  final list = <TargetEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getTarget());
  }
  return list;
}

List<Map<String, dynamic>> mockTargetsDataResponse({int length = 50}) {
  final list = getTargetsList();
  return list.map((e) => e.toJson()).toList();
}
