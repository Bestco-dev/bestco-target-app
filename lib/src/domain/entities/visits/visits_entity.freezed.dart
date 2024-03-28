// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visits_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitEntity _$VisitEntityFromJson(Map<String, dynamic> json) {
  return _VisitEntity.fromJson(json);
}

/// @nodoc
mixin _$VisitEntity {
  int get id => throw _privateConstructorUsedError;
  CustomerEntity? get customer => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  VisitType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitEntityCopyWith<VisitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitEntityCopyWith<$Res> {
  factory $VisitEntityCopyWith(
          VisitEntity value, $Res Function(VisitEntity) then) =
      _$VisitEntityCopyWithImpl<$Res, VisitEntity>;
  @useResult
  $Res call(
      {int id,
      CustomerEntity? customer,
      DateTime? date,
      String description,
      bool isDone,
      VisitType type});

  $CustomerEntityCopyWith<$Res>? get customer;
}

/// @nodoc
class _$VisitEntityCopyWithImpl<$Res, $Val extends VisitEntity>
    implements $VisitEntityCopyWith<$Res> {
  _$VisitEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = freezed,
    Object? date = freezed,
    Object? description = null,
    Object? isDone = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VisitType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerEntityCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerEntityCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisitEntityImplCopyWith<$Res>
    implements $VisitEntityCopyWith<$Res> {
  factory _$$VisitEntityImplCopyWith(
          _$VisitEntityImpl value, $Res Function(_$VisitEntityImpl) then) =
      __$$VisitEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      CustomerEntity? customer,
      DateTime? date,
      String description,
      bool isDone,
      VisitType type});

  @override
  $CustomerEntityCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$VisitEntityImplCopyWithImpl<$Res>
    extends _$VisitEntityCopyWithImpl<$Res, _$VisitEntityImpl>
    implements _$$VisitEntityImplCopyWith<$Res> {
  __$$VisitEntityImplCopyWithImpl(
      _$VisitEntityImpl _value, $Res Function(_$VisitEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = freezed,
    Object? date = freezed,
    Object? description = null,
    Object? isDone = null,
    Object? type = null,
  }) {
    return _then(_$VisitEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VisitType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$VisitEntityImpl extends _VisitEntity with DiagnosticableTreeMixin {
  const _$VisitEntityImpl(
      {this.id = 0,
      this.customer,
      this.date,
      this.description = '',
      this.isDone = false,
      this.type = VisitType.visit})
      : super._();

  factory _$VisitEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final CustomerEntity? customer;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final VisitType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisitEntity(id: $id, customer: $customer, date: $date, description: $description, isDone: $isDone, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisitEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('customer', customer))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, customer, date, description, isDone, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitEntityImplCopyWith<_$VisitEntityImpl> get copyWith =>
      __$$VisitEntityImplCopyWithImpl<_$VisitEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitEntityImplToJson(
      this,
    );
  }
}

abstract class _VisitEntity extends VisitEntity {
  const factory _VisitEntity(
      {final int id,
      final CustomerEntity? customer,
      final DateTime? date,
      final String description,
      final bool isDone,
      final VisitType type}) = _$VisitEntityImpl;
  const _VisitEntity._() : super._();

  factory _VisitEntity.fromJson(Map<String, dynamic> json) =
      _$VisitEntityImpl.fromJson;

  @override
  int get id;
  @override
  CustomerEntity? get customer;
  @override
  DateTime? get date;
  @override
  String get description;
  @override
  bool get isDone;
  @override
  VisitType get type;
  @override
  @JsonKey(ignore: true)
  _$$VisitEntityImplCopyWith<_$VisitEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
