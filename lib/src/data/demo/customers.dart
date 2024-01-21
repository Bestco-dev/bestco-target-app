import 'dart:math';

import 'package:faker/faker.dart';

import '../../domain/entities/address/address.dart';
import '../../domain/entities/partner/partner.dart';
import '../types/types.dart';
import 'images.dart';
import 'kpis.dart';
import 'systems.dart';

List<String> customerNames = [
  "Cold pole",
  "Rawbai Facotry",
  "Cold pole, Dwayne Newman",
  "Al Wahda Mall",
  "Dr. Soliman Fakeeh Hospital",
  "Saudi Telecom Company (STC)",
  "Saudi Electricity Company (SEC)",
  "Jarir Bookstore",
  "Al-Jazirah Vehicles Agencies",
  "Bin Dawood Superstores",
  "HyperPanda - A supermarket chain that combines a hypermarket "
];
List<String> addressNames = [
  "King Fahd Road (شارع الملك فهد) - A major road in Riyadh",
  "Tahlia Street (شارع التحلية) - Located in the heart of Jeddah,",
  "Olaya Street (شارع العليا) - Situated in the business district of Riyadh,",
  "Prince Mohammed bin Abdulaziz Street (شارع الأمير محمد بن عبدالعزيز) - Found in the city of Medina",
  "Dr. Soliman Fakeeh Hospital",
  "Corniche Road (كورنيش) - A scenic coastal road that stretches along the Arabian Gulf in cities like Jeddah",
  "Prince Mohammed bin Fahd Road (شارع الأمير محمد بن فهد) - A major road in Dammam",
  "Khobar-Dammam Highway (طريق الخبر-الدمام) - A highway",
  "Al Othman Street (شارع العثمان) - A popular street in Dammam"

];

AddressModel getAddress() {
  var faker2 = Faker();
  return AddressModel(
    name: addressNames[Random().nextInt(addressNames.length)],
    // name: faker.address.streetAddress(),
    latitude: 24.259650,

    // latitude: faker.randomGenerator.decimal(),
    longitude: 55.704760,
  );
}

PartnerModel getCustomer() {
  final id = faker.randomGenerator.integer(5000);
  final name = customerNames[Random().nextInt(customerNames.length)];
  // final name = "${faker.company.name()} ${faker.company.name()}";
  final phone = faker.phoneNumber.us();

  return PartnerModel(
    id: id,
    name: name,
    phone: phone,
    avatarUrl: FakeImages.randomImage(isUser: false),
    address: getAddress(),
    systems: getSystems(length: 2)
        .map(
          (system) => system.copyWith(
          equipments: system.equipments
              .map((equipment) => equipment.copyWith(
              kpis: equipment.kpis.map((kpi) {
                final measuermentType = faker.randomGenerator
                    .element(KpiMeasuermentType.values);
                return kpi.copyWith(
                  measuermentType: measuermentType,
                  options: getAnswers(type: measuermentType),
                );
              }).toList()))
              .toList()),
    )
        .toList(),
  );
}

List<PartnerModel> getCustomers({int length = 3}) {
  final list = <PartnerModel>[];
  for (var i = 0; i < length; i++) {
    list.add(getCustomer());
  }
  return list;
}

List<Map<String, dynamic>> mockCustomersDataResponse({int length = 50}) {
  final list = getCustomers(length: 50);
  return list.map((e) {
    return e.toJson();
  }).toList();
}
