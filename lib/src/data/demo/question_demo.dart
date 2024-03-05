import 'package:faker/faker.dart';

import '../../domain/entities/question_entity/question_entity.dart';
import '../types/types_enums.dart';

QuestionEntity getQuestion({bool isAnswer = false}) {
  final id = faker.randomGenerator.integer(5000);
  final name = faker.person.name();
  final department = faker.lorem.word();
  final answer = faker.lorem.word();
  final answers = faker.lorem.words(3);
  final description = faker.lorem.words(20).join(' ');
  final type = faker.randomGenerator.element(QuestionType.values);
  final List<String> values = faker.lorem.words(3);

  print("anwers $answer");
  return QuestionEntity(
    id: id,
    title: name,
    type: type,
    values: values,
    answer: isAnswer
        ? type == QuestionType.multiple_choice
            ? answers
            : answer
        : null,
  );
}

List<QuestionEntity> getQuestionsList({int length = 50, bool isAnswer = true}) {
  final list = <QuestionEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getQuestion(isAnswer: isAnswer));
  }
  return list;
}

List<Map<String, dynamic>> mockQuestionsListDataResponse({int length = 50}) {
  final list = getQuestionsList();
  return list.map((e) => e.toJson()).toList();
}
