import 'package:faker/faker.dart';

import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/order_line/order_line_entity.dart';
import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/service_main/main_service_entity.dart';
import '../../domain/entities/service_sub/sub_service.dart';
import '../types/types_enums.dart';
import 'customers.dart';
import 'date.dart';
import 'images.dart';
import 'products.dart';

OrderEntity getOrdersProducts() {
  final id = faker.randomGenerator.integer(5000);
  final qtn = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(ProductType.values);
  return OrderEntity(
    id: id,
    customer: getCustomer(),
    date: getDate(),
    lines: List.generate(
      2,
      (index) => OrderLineEntity(
        product: getProduct(),
        qtn: double.parse(faker.randomGenerator.integer(10).toString()),
      ),
    ),
  );
}

List<OrderEntity> getOrdersProductsList({int length = 50}) {
  final list = <OrderEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getOrdersProducts());
  }
  return list;
}

List<Map<String, dynamic>> mockOrdersProductsDataResponse({int length = 50}) {
  final list = getOrdersProductsList();
  return list.map((e) => e.toJson()).toList();
}
