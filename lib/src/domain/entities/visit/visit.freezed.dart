// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitModel _$VisitModelFromJson(Map<String, dynamic> json) {
  return _VisitModel.fromJson(json);
}

/// @nodoc
mixin _$VisitModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  VisitStatusModel get status => throw _privateConstructorUsedError;
  VisitType get type => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  PartnerModel get customer => throw _privateConstructorUsedError;
  VisitAction get action => throw _privateConstructorUsedError;
  bool get isRescheduled => throw _privateConstructorUsedError;
  VisitDescriptionModel? get description => throw _privateConstructorUsedError;
  List<SystemModel> get systems => throw _privateConstructorUsedError;
  List<EngineerEntity> get engineers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitModelCopyWith<VisitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitModelCopyWith<$Res> {
  factory $VisitModelCopyWith(
          VisitModel value, $Res Function(VisitModel) then) =
      _$VisitModelCopyWithImpl<$Res, VisitModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      VisitStatusModel status,
      VisitType type,
      DateTime date,
      PartnerModel customer,
      VisitAction action,
      bool isRescheduled,
      VisitDescriptionModel? description,
      List<SystemModel> systems,
      List<EngineerEntity> engineers});

  $VisitStatusModelCopyWith<$Res> get status;
  $PartnerModelCopyWith<$Res> get customer;
  $VisitDescriptionModelCopyWith<$Res>? get description;
}

/// @nodoc
class _$VisitModelCopyWithImpl<$Res, $Val extends VisitModel>
    implements $VisitModelCopyWith<$Res> {
  _$VisitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? type = null,
    Object? date = null,
    Object? customer = null,
    Object? action = null,
    Object? isRescheduled = null,
    Object? description = freezed,
    Object? systems = null,
    Object? engineers = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VisitStatusModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VisitType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as PartnerModel,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VisitAction,
      isRescheduled: null == isRescheduled
          ? _value.isRescheduled
          : isRescheduled // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as VisitDescriptionModel?,
      systems: null == systems
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as List<SystemModel>,
      engineers: null == engineers
          ? _value.engineers
          : engineers // ignore: cast_nullable_to_non_nullable
              as List<EngineerEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitStatusModelCopyWith<$Res> get status {
    return $VisitStatusModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerModelCopyWith<$Res> get customer {
    return $PartnerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitDescriptionModelCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $VisitDescriptionModelCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VisitModelCopyWith<$Res>
    implements $VisitModelCopyWith<$Res> {
  factory _$$_VisitModelCopyWith(
          _$_VisitModel value, $Res Function(_$_VisitModel) then) =
      __$$_VisitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      VisitStatusModel status,
      VisitType type,
      DateTime date,
      PartnerModel customer,
      VisitAction action,
      bool isRescheduled,
      VisitDescriptionModel? description,
      List<SystemModel> systems,
      List<EngineerEntity> engineers});

  @override
  $VisitStatusModelCopyWith<$Res> get status;
  @override
  $PartnerModelCopyWith<$Res> get customer;
  @override
  $VisitDescriptionModelCopyWith<$Res>? get description;
}

/// @nodoc
class __$$_VisitModelCopyWithImpl<$Res>
    extends _$VisitModelCopyWithImpl<$Res, _$_VisitModel>
    implements _$$_VisitModelCopyWith<$Res> {
  __$$_VisitModelCopyWithImpl(
      _$_VisitModel _value, $Res Function(_$_VisitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? type = null,
    Object? date = null,
    Object? customer = null,
    Object? action = null,
    Object? isRescheduled = null,
    Object? description = freezed,
    Object? systems = null,
    Object? engineers = null,
  }) {
    return _then(_$_VisitModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VisitStatusModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VisitType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as PartnerModel,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VisitAction,
      isRescheduled: null == isRescheduled
          ? _value.isRescheduled
          : isRescheduled // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as VisitDescriptionModel?,
      systems: null == systems
          ? _value._systems
          : systems // ignore: cast_nullable_to_non_nullable
              as List<SystemModel>,
      engineers: null == engineers
          ? _value._engineers
          : engineers // ignore: cast_nullable_to_non_nullable
              as List<EngineerEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_VisitModel extends _VisitModel {
  _$_VisitModel(
      {required this.id,
      required this.name,
      required this.status,
      required this.type,
      required this.date,
      required this.customer,
      this.action = VisitAction.ideal,
      this.isRescheduled = false,
      this.description,
      final List<SystemModel> systems = const [],
      final List<EngineerEntity> engineers = const []})
      : _systems = systems,
        _engineers = engineers,
        super._();

  factory _$_VisitModel.fromJson(Map<String, dynamic> json) =>
      _$$_VisitModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final VisitStatusModel status;
  @override
  final VisitType type;
  @override
  final DateTime date;
  @override
  final PartnerModel customer;
  @override
  @JsonKey()
  final VisitAction action;
  @override
  @JsonKey()
  final bool isRescheduled;
  @override
  final VisitDescriptionModel? description;
  final List<SystemModel> _systems;
  @override
  @JsonKey()
  List<SystemModel> get systems {
    if (_systems is EqualUnmodifiableListView) return _systems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_systems);
  }

  final List<EngineerEntity> _engineers;
  @override
  @JsonKey()
  List<EngineerEntity> get engineers {
    if (_engineers is EqualUnmodifiableListView) return _engineers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_engineers);
  }

  @override
  String toString() {
    return 'VisitModel(id: $id, name: $name, status: $status, type: $type, date: $date, customer: $customer, action: $action, isRescheduled: $isRescheduled, description: $description, systems: $systems, engineers: $engineers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.isRescheduled, isRescheduled) ||
                other.isRescheduled == isRescheduled) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._systems, _systems) &&
            const DeepCollectionEquality()
                .equals(other._engineers, _engineers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      type,
      date,
      customer,
      action,
      isRescheduled,
      description,
      const DeepCollectionEquality().hash(_systems),
      const DeepCollectionEquality().hash(_engineers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitModelCopyWith<_$_VisitModel> get copyWith =>
      __$$_VisitModelCopyWithImpl<_$_VisitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitModelToJson(
      this,
    );
  }
}

abstract class _VisitModel extends VisitModel {
  factory _VisitModel(
      {required final int id,
      required final String name,
      required final VisitStatusModel status,
      required final VisitType type,
      required final DateTime date,
      required final PartnerModel customer,
      final VisitAction action,
      final bool isRescheduled,
      final VisitDescriptionModel? description,
      final List<SystemModel> systems,
      final List<EngineerEntity> engineers}) = _$_VisitModel;
  _VisitModel._() : super._();

  factory _VisitModel.fromJson(Map<String, dynamic> json) =
      _$_VisitModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  VisitStatusModel get status;
  @override
  VisitType get type;
  @override
  DateTime get date;
  @override
  PartnerModel get customer;
  @override
  VisitAction get action;
  @override
  bool get isRescheduled;
  @override
  VisitDescriptionModel? get description;
  @override
  List<SystemModel> get systems;
  @override
  List<EngineerEntity> get engineers;
  @override
  @JsonKey(ignore: true)
  _$$_VisitModelCopyWith<_$_VisitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
