import 'package:faker/faker.dart';

String getAppAboutTextInfo(){
  return faker.lorem.words(140).join(' ');
}