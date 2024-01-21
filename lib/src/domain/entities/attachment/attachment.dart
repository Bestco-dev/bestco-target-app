import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
abstract class AttachmentModel with _$AttachmentModel {
  const AttachmentModel._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AttachmentModel({
    required int id,
    required String url,
  }) = _AttachmentModel;

  factory AttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentModelFromJson(json);
}
