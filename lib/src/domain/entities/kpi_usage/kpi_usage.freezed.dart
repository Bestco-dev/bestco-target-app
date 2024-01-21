// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kpi_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KpiUsageModel _$KpiUsageModelFromJson(Map<String, dynamic> json) {
  return _KpiUsageModel.fromJson(json);
}

/// @nodoc
mixin _$KpiUsageModel {
  String get description => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KpiUsageModelCopyWith<KpiUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiUsageModelCopyWith<$Res> {
  factory $KpiUsageModelCopyWith(
          KpiUsageModel value, $Res Function(KpiUsageModel) then) =
      _$KpiUsageModelCopyWithImpl<$Res, KpiUsageModel>;
  @useResult
  $Res call({String description, String? link});
}

/// @nodoc
class _$KpiUsageModelCopyWithImpl<$Res, $Val extends KpiUsageModel>
    implements $KpiUsageModelCopyWith<$Res> {
  _$KpiUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KpiUsageModelCopyWith<$Res>
    implements $KpiUsageModelCopyWith<$Res> {
  factory _$$_KpiUsageModelCopyWith(
          _$_KpiUsageModel value, $Res Function(_$_KpiUsageModel) then) =
      __$$_KpiUsageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String? link});
}

/// @nodoc
class __$$_KpiUsageModelCopyWithImpl<$Res>
    extends _$KpiUsageModelCopyWithImpl<$Res, _$_KpiUsageModel>
    implements _$$_KpiUsageModelCopyWith<$Res> {
  __$$_KpiUsageModelCopyWithImpl(
      _$_KpiUsageModel _value, $Res Function(_$_KpiUsageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? link = freezed,
  }) {
    return _then(_$_KpiUsageModel(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_KpiUsageModel extends _KpiUsageModel with DiagnosticableTreeMixin {
  const _$_KpiUsageModel({this.description = '', this.link}) : super._();

  factory _$_KpiUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_KpiUsageModelFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  final String? link;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KpiUsageModel(description: $description, link: $link)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KpiUsageModel'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('link', link));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KpiUsageModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KpiUsageModelCopyWith<_$_KpiUsageModel> get copyWith =>
      __$$_KpiUsageModelCopyWithImpl<_$_KpiUsageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KpiUsageModelToJson(
      this,
    );
  }
}

abstract class _KpiUsageModel extends KpiUsageModel {
  const factory _KpiUsageModel({final String description, final String? link}) =
      _$_KpiUsageModel;
  const _KpiUsageModel._() : super._();

  factory _KpiUsageModel.fromJson(Map<String, dynamic> json) =
      _$_KpiUsageModel.fromJson;

  @override
  String get description;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_KpiUsageModelCopyWith<_$_KpiUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
