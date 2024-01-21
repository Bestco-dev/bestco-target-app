import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types.dart';
import '../key_value/key_value.dart';
import '../kpi_usage/kpi_usage.dart';

part 'kpi.freezed.dart';
part 'kpi.g.dart';

@freezed
class KpiModel with _$KpiModel {
  const KpiModel._(); // Added constructor
  @JsonSerializable(explicitToJson: true)
  factory KpiModel({
    required int id,
    required String name,
    String? description,
    FailureType? failures,
    required KpiMeasuermentType measuermentType,
    @Default([]) List<KpiOptionModel> options,
    KpiUsageModel? usage,
    // @Default([]) List<KeyValueModel> answers,
  }) = _KpiModel;

  factory KpiModel.fromJson(Map<String, dynamic> json) =>
      _$KpiModelFromJson(json);

  bool get hasHowToUse=>usage!=null;

  List<KpiOptionModel> get getAnswers {
    if (measuermentType.isSingleChoice ||measuermentType.isNumberCounter) {
      List<KpiOptionModel> answers = [
        for (KpiOptionModel option in options)
          if (option.value != null) option
      ];
      return answers;
    }
    if(measuermentType.isNumber){
      List<KpiOptionModel> answers = [
        for (KpiOptionModel option in options)
          if (option.value == null || (option.value?.isEmpty??false)) option.copyWith(
            value: "Not Applicable"
          )
        else option
      ];
      return answers;
    }
    return options;
  }
}
