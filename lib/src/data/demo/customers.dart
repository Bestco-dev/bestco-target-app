import 'package:faker/faker.dart';

import '../../domain/entities/address/address.dart';
import '../../domain/entities/customer/customer.dart';
import '../types/types_enums.dart';
import 'images.dart';

AddressModel getAddress() {
  final id = faker.randomGenerator.integer(5000);
  return AddressModel(
    id: id,

    // name: faker.address.streetAddress(),
    latitude: 24.259650,

    // latitude: faker.randomGenerator.decimal(),
    longitude: 55.704760,
  );
}

CustomerEntity getCustomer() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final phone = faker.phoneNumber.us();
  final type = faker.randomGenerator.element(CustomerType.values);
  return CustomerEntity(
    id: id,
    name: name,
    type: type,
    phone: phone,
    imageUrl: FakeImages.randomImage(isUser: false),
    address: getAddress(),
  );
}

List<CustomerEntity> getCustomerList({int length = 50}) {
  final list = <CustomerEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getCustomer());
  }
  return list;
}

List<Map<String, dynamic>> mockCustomersDataResponse({int length = 50}) {
  final list = getCustomerList();
  return list.map((e) => e.toJson()).toList();
}
