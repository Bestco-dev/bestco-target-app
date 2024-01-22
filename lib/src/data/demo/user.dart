import 'package:faker/faker.dart';

import '../../domain/entities/user/user.dart';
import '../types/types_enums.dart';
import 'images.dart';

UserEntity getUser() {
  final id = faker.randomGenerator.integer(5000);

  final name = faker.company.name();
  final type = faker.randomGenerator.element(UserType.values);

  // final job = faker.job.title();
  // final phone = faker.phoneNumber.us();
  // final sCount = faker.randomGenerator.integer(100);
  // final mCount = faker.randomGenerator.integer(100);
  // final eCount = faker.randomGenerator.integer(100);

  return UserEntity(
    id: id,
    name: name,
    phone: faker.phoneNumber.us(),
    type: type,
    imageUrl: FakeImages.randomImage(isUser: false),
  );
}

