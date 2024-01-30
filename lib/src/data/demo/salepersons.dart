import 'package:faker/faker.dart';

import '../../domain/entities/salseperson/saleperson_entity.dart';
import 'customers.dart';
import 'images.dart';

SalePersonEntity getSalepersons() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final phone = faker.phoneNumber.us();
  final email = "${faker.person.firstName()}@gmail.com";
  // final status = faker.randomGenerator.element(ProductType.values);
  return SalePersonEntity(
    id: id,
    name: name,
    imgUrl: FakeImages.randomImage(),
    address: getAddress(),
    phone: phone,
    email: email,
  );
}

List<SalePersonEntity> getSalepersonsList({int length = 50}) {
  final list = <SalePersonEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getSalepersons());
  }
  return list;
}

List<Map<String, dynamic>> mockSalepersonDataResponse({int length = 50}) {
  final list = getSalepersonsList();
  return list.map((e) => e.toJson()).toList();
}
