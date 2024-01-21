import 'dart:math';

import 'package:faker/faker.dart';

import '../../domain/entities/company/company.dart';
import '../../domain/entities/user/user.dart';
import 'customers.dart';
import 'images.dart';

List<String> usersName = [
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

List<String> fieldCompaniesNames = [
  "Saudi Factory for Fire Equipment Co. (SFFECO)",
  "NAFFCO (National Fire Fighting Manufacturing Company)",
  "KANEX Fire",
  "Almarai Fire & Safety",
  "Saudi Total Fire Protection Co. (Tasheed)",
];

UserEntity getUser() {
  final id = faker.randomGenerator.integer(5000);
  final sCount = faker.randomGenerator.integer(100);
  final mCount = faker.randomGenerator.integer(100);
  final eCount = faker.randomGenerator.integer(100);
  final name = usersName[Random().nextInt(usersName.length)];
  // final name = faker.company.name();
  final job = faker.job.title();
  final phone = faker.phoneNumber.us();

  return UserEntity(
    id: id,
    name: name,
    jobTitle: job,
    company: getCompany(),
    phone: faker.phoneNumber.us(),
    scheduledVisitsCount: sCount,
    maintenanceVisitsCount: mCount,
    emergencyVisitsCount: eCount,
    avatarUrl: FakeImages.randomImage(isUser: false),
  );
}

CompanyEntity getCompany() {
  final id = faker.randomGenerator.integer(5000);

  final name =
      fieldCompaniesNames[Random().nextInt(fieldCompaniesNames.length)];
  // final name = "${faker.company.name()} ${faker.company.name()}";
  return CompanyEntity(
    id: id,
    name: name,
    address: getAddress(),
    logo: FakeImages.randomImage(),
    phone: faker.phoneNumber.us(),
  );
}
