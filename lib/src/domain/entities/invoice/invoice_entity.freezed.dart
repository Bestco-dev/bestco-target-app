// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceEntity _$InvoiceEntityFromJson(Map<String, dynamic> json) {
  return _InvoiceEntity.fromJson(json);
}

/// @nodoc
mixin _$InvoiceEntity {
  int get id => throw _privateConstructorUsedError;
  String get sequenceNumber => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceEntityCopyWith<InvoiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceEntityCopyWith<$Res> {
  factory $InvoiceEntityCopyWith(
          InvoiceEntity value, $Res Function(InvoiceEntity) then) =
      _$InvoiceEntityCopyWithImpl<$Res, InvoiceEntity>;
  @useResult
  $Res call({int id, String sequenceNumber, DateTime date});
}

/// @nodoc
class _$InvoiceEntityCopyWithImpl<$Res, $Val extends InvoiceEntity>
    implements $InvoiceEntityCopyWith<$Res> {
  _$InvoiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequenceNumber = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceEntityCopyWith<$Res>
    implements $InvoiceEntityCopyWith<$Res> {
  factory _$$_InvoiceEntityCopyWith(
          _$_InvoiceEntity value, $Res Function(_$_InvoiceEntity) then) =
      __$$_InvoiceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String sequenceNumber, DateTime date});
}

/// @nodoc
class __$$_InvoiceEntityCopyWithImpl<$Res>
    extends _$InvoiceEntityCopyWithImpl<$Res, _$_InvoiceEntity>
    implements _$$_InvoiceEntityCopyWith<$Res> {
  __$$_InvoiceEntityCopyWithImpl(
      _$_InvoiceEntity _value, $Res Function(_$_InvoiceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequenceNumber = null,
    Object? date = null,
  }) {
    return _then(_$_InvoiceEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_InvoiceEntity with DiagnosticableTreeMixin implements _InvoiceEntity {
  const _$_InvoiceEntity(
      {required this.id, required this.sequenceNumber, required this.date});

  factory _$_InvoiceEntity.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceEntityFromJson(json);

  @override
  final int id;
  @override
  final String sequenceNumber;
  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceEntity(id: $id, sequenceNumber: $sequenceNumber, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sequenceNumber', sequenceNumber))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sequenceNumber, sequenceNumber) ||
                other.sequenceNumber == sequenceNumber) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sequenceNumber, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceEntityCopyWith<_$_InvoiceEntity> get copyWith =>
      __$$_InvoiceEntityCopyWithImpl<_$_InvoiceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceEntityToJson(
      this,
    );
  }
}

abstract class _InvoiceEntity implements InvoiceEntity {
  const factory _InvoiceEntity(
      {required final int id,
      required final String sequenceNumber,
      required final DateTime date}) = _$_InvoiceEntity;

  factory _InvoiceEntity.fromJson(Map<String, dynamic> json) =
      _$_InvoiceEntity.fromJson;

  @override
  int get id;
  @override
  String get sequenceNumber;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceEntityCopyWith<_$_InvoiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
