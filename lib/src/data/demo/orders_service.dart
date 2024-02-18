import 'package:faker/faker.dart';

import '../../domain/entities/order_services/order_service_entity.dart';
import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/service_main/main_service_entity.dart';
import '../types/types_enums.dart';
import 'customers.dart';
import 'date.dart';
import 'images.dart';
import 'orders_products.dart';
import 'question_demo.dart';
import 'services_main.dart';
import 'services_sub.dart';

OrderServiceEntity getOrdersServices() {
  DateTime now = DateTime.now();
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(ProductType.values);

  return OrderServiceEntity(
    id: id,
    customer: getCustomer(),
    mainService: getMainServices(),
    subService: getSubService(),
    date: getDate(),
    questions: getQuestionsList(length: 3),

    // name: name,
  );
}

List<OrderServiceEntity> getOrdersServiceList({int length = 50}) {
  final list = <OrderServiceEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getOrdersServices());
  }
  return list;
}

List<Map<String, dynamic>> mockOrdersServiceDataResponse({int length = 50}) {
  final list = getOrdersServiceList();
  return list.map((e) => e.toJson()).toList();
}
