import 'package:faker/faker.dart';

import '../../domain/entities/news/news_entity.dart';
import '../../domain/entities/product/product_entity.dart';
import '../types/types_enums.dart';
import 'date.dart';
import 'images.dart';

NewsEntity getProduct() {
  final id = faker.randomGenerator.integer(5000);
  final title = faker.lorem.words(4).join(' ');
  final description = faker.lorem.words(20).join(' ');
  return NewsEntity(
    id: id,
    title: title,
    date: getDate(),
    imageUrl: faker.randomGenerator.boolean() ? FakeImages.randomImage() : null,
    description: faker.randomGenerator.boolean() ? description : null,
  );
}

List<NewsEntity> getNewsList({int length = 50}) {
  final list = <NewsEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getProduct());
  }
  return list;
}

List<Map<String, dynamic>> mockNewsDataResponse({int length = 50}) {
  final list = getNewsList();
  return list.map((e) => e.toJson()).toList();
}
