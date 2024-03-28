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
  String get name => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, DateTime date, double amount});
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
    Object? name = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceEntityImplCopyWith<$Res>
    implements $InvoiceEntityCopyWith<$Res> {
  factory _$$InvoiceEntityImplCopyWith(
          _$InvoiceEntityImpl value, $Res Function(_$InvoiceEntityImpl) then) =
      __$$InvoiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, DateTime date, double amount});
}

/// @nodoc
class __$$InvoiceEntityImplCopyWithImpl<$Res>
    extends _$InvoiceEntityCopyWithImpl<$Res, _$InvoiceEntityImpl>
    implements _$$InvoiceEntityImplCopyWith<$Res> {
  __$$InvoiceEntityImplCopyWithImpl(
      _$InvoiceEntityImpl _value, $Res Function(_$InvoiceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_$InvoiceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$InvoiceEntityImpl
    with DiagnosticableTreeMixin
    implements _InvoiceEntity {
  const _$InvoiceEntityImpl(
      {required this.id,
      required this.name,
      required this.date,
      required this.amount});

  factory _$InvoiceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime date;
  @override
  final double amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceEntity(id: $id, name: $name, date: $date, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, date, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceEntityImplCopyWith<_$InvoiceEntityImpl> get copyWith =>
      __$$InvoiceEntityImplCopyWithImpl<_$InvoiceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceEntityImplToJson(
      this,
    );
  }
}

abstract class _InvoiceEntity implements InvoiceEntity {
  const factory _InvoiceEntity(
      {required final int id,
      required final String name,
      required final DateTime date,
      required final double amount}) = _$InvoiceEntityImpl;

  factory _InvoiceEntity.fromJson(Map<String, dynamic> json) =
      _$InvoiceEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get date;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceEntityImplCopyWith<_$InvoiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
