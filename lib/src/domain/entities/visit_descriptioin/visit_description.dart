import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../attachment/attachment.dart';

part 'visit_description.freezed.dart';
part 'visit_description.g.dart';

@freezed
abstract class VisitDescriptionModel with _$VisitDescriptionModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory VisitDescriptionModel({
    @Default('') String description,
    @Default([]) List<AttachmentModel> attachments,
    @Default([]) List<AttachmentModel> voiceRecords,
  }) = _VisitDescription;
  
  

  factory VisitDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$VisitDescriptionModelFromJson(json);
}