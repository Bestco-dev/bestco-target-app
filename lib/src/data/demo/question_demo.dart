import 'package:faker/faker.dart';

import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/question_entity/question_entity.dart';
import '../../domain/entities/service_main/main_service_entity.dart';
import '../types/types_enums.dart';
import 'images.dart';

QuestionEntity getQuestion() {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(QuestionType.values);
  final List<String> values = faker.lorem.words(3);
  return QuestionEntity(
    id: id,
    title: name,
    type: type,
    values: values,

  );
}

List<QuestionEntity> getQuestionsList({int length = 50}) {
  final list = <QuestionEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getQuestion());
  }
  return list;
}

List<Map<String, dynamic>> mockQuestionsListDataResponse({int length = 50}) {
  final list = getQuestionsList();
  return list.map((e) => e.toJson()).toList();
}
