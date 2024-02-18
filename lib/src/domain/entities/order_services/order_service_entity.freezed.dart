// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderServiceEntity _$OrderServiceEntityFromJson(Map<String, dynamic> json) {
  return _OrderServiceEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderServiceEntity {
  int get id => throw _privateConstructorUsedError;
  CustomerEntity? get customer => throw _privateConstructorUsedError;
  MainServiceEntity get mainService => throw _privateConstructorUsedError;
  SubServiceEntity get subService => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  List<QuestionEntity> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderServiceEntityCopyWith<OrderServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderServiceEntityCopyWith<$Res> {
  factory $OrderServiceEntityCopyWith(
          OrderServiceEntity value, $Res Function(OrderServiceEntity) then) =
      _$OrderServiceEntityCopyWithImpl<$Res, OrderServiceEntity>;
  @useResult
  $Res call(
      {int id,
      CustomerEntity? customer,
      MainServiceEntity mainService,
      SubServiceEntity subService,
      DateTime date,
      String? state,
      List<QuestionEntity> questions});

  $CustomerEntityCopyWith<$Res>? get customer;
  $MainServiceEntityCopyWith<$Res> get mainService;
  $SubServiceEntityCopyWith<$Res> get subService;
}

/// @nodoc
class _$OrderServiceEntityCopyWithImpl<$Res, $Val extends OrderServiceEntity>
    implements $OrderServiceEntityCopyWith<$Res> {
  _$OrderServiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = freezed,
    Object? mainService = null,
    Object? subService = null,
    Object? date = null,
    Object? state = freezed,
    Object? questions = null,
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
      mainService: null == mainService
          ? _value.mainService
          : mainService // ignore: cast_nullable_to_non_nullable
              as MainServiceEntity,
      subService: null == subService
          ? _value.subService
          : subService // ignore: cast_nullable_to_non_nullable
              as SubServiceEntity,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
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

  @override
  @pragma('vm:prefer-inline')
  $MainServiceEntityCopyWith<$Res> get mainService {
    return $MainServiceEntityCopyWith<$Res>(_value.mainService, (value) {
      return _then(_value.copyWith(mainService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubServiceEntityCopyWith<$Res> get subService {
    return $SubServiceEntityCopyWith<$Res>(_value.subService, (value) {
      return _then(_value.copyWith(subService: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderServiceEntityImplCopyWith<$Res>
    implements $OrderServiceEntityCopyWith<$Res> {
  factory _$$OrderServiceEntityImplCopyWith(_$OrderServiceEntityImpl value,
          $Res Function(_$OrderServiceEntityImpl) then) =
      __$$OrderServiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      CustomerEntity? customer,
      MainServiceEntity mainService,
      SubServiceEntity subService,
      DateTime date,
      String? state,
      List<QuestionEntity> questions});

  @override
  $CustomerEntityCopyWith<$Res>? get customer;
  @override
  $MainServiceEntityCopyWith<$Res> get mainService;
  @override
  $SubServiceEntityCopyWith<$Res> get subService;
}

/// @nodoc
class __$$OrderServiceEntityImplCopyWithImpl<$Res>
    extends _$OrderServiceEntityCopyWithImpl<$Res, _$OrderServiceEntityImpl>
    implements _$$OrderServiceEntityImplCopyWith<$Res> {
  __$$OrderServiceEntityImplCopyWithImpl(_$OrderServiceEntityImpl _value,
      $Res Function(_$OrderServiceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = freezed,
    Object? mainService = null,
    Object? subService = null,
    Object? date = null,
    Object? state = freezed,
    Object? questions = null,
  }) {
    return _then(_$OrderServiceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity?,
      mainService: null == mainService
          ? _value.mainService
          : mainService // ignore: cast_nullable_to_non_nullable
              as MainServiceEntity,
      subService: null == subService
          ? _value.subService
          : subService // ignore: cast_nullable_to_non_nullable
              as SubServiceEntity,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderServiceEntityImpl
    with DiagnosticableTreeMixin
    implements _OrderServiceEntity {
  const _$OrderServiceEntityImpl(
      {this.id = 0,
      this.customer,
      required this.mainService,
      required this.subService,
      required this.date,
      this.state,
      final List<QuestionEntity> questions = const []})
      : _questions = questions;

  factory _$OrderServiceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderServiceEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final CustomerEntity? customer;
  @override
  final MainServiceEntity mainService;
  @override
  final SubServiceEntity subService;
  @override
  final DateTime date;
  @override
  final String? state;
  final List<QuestionEntity> _questions;
  @override
  @JsonKey()
  List<QuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderServiceEntity(id: $id, customer: $customer, mainService: $mainService, subService: $subService, date: $date, state: $state, questions: $questions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderServiceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('customer', customer))
      ..add(DiagnosticsProperty('mainService', mainService))
      ..add(DiagnosticsProperty('subService', subService))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('questions', questions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderServiceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.mainService, mainService) ||
                other.mainService == mainService) &&
            (identical(other.subService, subService) ||
                other.subService == subService) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, customer, mainService,
      subService, date, state, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderServiceEntityImplCopyWith<_$OrderServiceEntityImpl> get copyWith =>
      __$$OrderServiceEntityImplCopyWithImpl<_$OrderServiceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderServiceEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderServiceEntity implements OrderServiceEntity {
  const factory _OrderServiceEntity(
      {final int id,
      final CustomerEntity? customer,
      required final MainServiceEntity mainService,
      required final SubServiceEntity subService,
      required final DateTime date,
      final String? state,
      final List<QuestionEntity> questions}) = _$OrderServiceEntityImpl;

  factory _OrderServiceEntity.fromJson(Map<String, dynamic> json) =
      _$OrderServiceEntityImpl.fromJson;

  @override
  int get id;
  @override
  CustomerEntity? get customer;
  @override
  MainServiceEntity get mainService;
  @override
  SubServiceEntity get subService;
  @override
  DateTime get date;
  @override
  String? get state;
  @override
  List<QuestionEntity> get questions;
  @override
  @JsonKey(ignore: true)
  _$$OrderServiceEntityImplCopyWith<_$OrderServiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
