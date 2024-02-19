import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_entity.freezed.dart';
part 'news_entity.g.dart';

@freezed
abstract class NewsEntity with _$NewsEntity {
  const NewsEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewsEntity({
    required int id,
    required String title,
    String? imageUrl,
    String? description,
    required DateTime date,
  }) = _NewsEntity;

  factory NewsEntity.fromJson(Map<String, dynamic> json) =>
      _$NewsEntityFromJson(json);

  bool get hasImage => imageUrl != null;
  bool get hasDescription => imageUrl != null;
}
