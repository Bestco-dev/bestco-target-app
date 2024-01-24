import 'package:faker/faker.dart';

import '../../domain/entities/product/product_entity.dart';
import '../types/types_enums.dart';
import 'images.dart';

ProductEntity getProduct() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(ProductType.values);
  return ProductEntity(
    id: id,
    name: name,
    type: type,
    imageUrl: FakeImages.randomImage(),
    price: faker.randomGenerator.decimal(min: 1000,scale: 1).floorToDouble(),
    department: department,
    description: description,
  );
}

List<ProductEntity> getProductsList({int length = 50}) {
  final list = <ProductEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getProduct());
  }
  return list;
}

List<Map<String, dynamic>> mockProdcurtsDataResponse({int length = 50}) {
  final list = getProductsList();
  return list.map((e) => e.toJson()).toList();
}
