// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractEntity _$ContractEntityFromJson(Map<String, dynamic> json) {
  return _ContractEntity.fromJson(json);
}

/// @nodoc
mixin _$ContractEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractEntityCopyWith<ContractEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractEntityCopyWith<$Res> {
  factory $ContractEntityCopyWith(
          ContractEntity value, $Res Function(ContractEntity) then) =
      _$ContractEntityCopyWithImpl<$Res, ContractEntity>;
  @useResult
  $Res call({int id, String name, DateTime expirationDate});
}

/// @nodoc
class _$ContractEntityCopyWithImpl<$Res, $Val extends ContractEntity>
    implements $ContractEntityCopyWith<$Res> {
  _$ContractEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? expirationDate = null,
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
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractEntityImplCopyWith<$Res>
    implements $ContractEntityCopyWith<$Res> {
  factory _$$ContractEntityImplCopyWith(_$ContractEntityImpl value,
          $Res Function(_$ContractEntityImpl) then) =
      __$$ContractEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, DateTime expirationDate});
}

/// @nodoc
class __$$ContractEntityImplCopyWithImpl<$Res>
    extends _$ContractEntityCopyWithImpl<$Res, _$ContractEntityImpl>
    implements _$$ContractEntityImplCopyWith<$Res> {
  __$$ContractEntityImplCopyWithImpl(
      _$ContractEntityImpl _value, $Res Function(_$ContractEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? expirationDate = null,
  }) {
    return _then(_$ContractEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ContractEntityImpl
    with DiagnosticableTreeMixin
    implements _ContractEntity {
  const _$ContractEntityImpl(
      {required this.id, required this.name, required this.expirationDate});

  factory _$ContractEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime expirationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContractEntity(id: $id, name: $name, expirationDate: $expirationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContractEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('expirationDate', expirationDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, expirationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractEntityImplCopyWith<_$ContractEntityImpl> get copyWith =>
      __$$ContractEntityImplCopyWithImpl<_$ContractEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractEntityImplToJson(
      this,
    );
  }
}

abstract class _ContractEntity implements ContractEntity {
  const factory _ContractEntity(
      {required final int id,
      required final String name,
      required final DateTime expirationDate}) = _$ContractEntityImpl;

  factory _ContractEntity.fromJson(Map<String, dynamic> json) =
      _$ContractEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$ContractEntityImplCopyWith<_$ContractEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
