// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_line_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderLineEntity _$OrderLineEntityFromJson(Map<String, dynamic> json) {
  return _OrderLineEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderLineEntity {
  int get id => throw _privateConstructorUsedError;
  ProductEntity get product => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  double get qtn => throw _privateConstructorUsedError;
  double get priceUnit => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLineEntityCopyWith<OrderLineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineEntityCopyWith<$Res> {
  factory $OrderLineEntityCopyWith(
          OrderLineEntity value, $Res Function(OrderLineEntity) then) =
      _$OrderLineEntityCopyWithImpl<$Res, OrderLineEntity>;
  @useResult
  $Res call(
      {int id,
      ProductEntity product,
      @JsonKey(name: "qty") double qtn,
      double priceUnit,
      double totalPrice});

  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderLineEntityCopyWithImpl<$Res, $Val extends OrderLineEntity>
    implements $OrderLineEntityCopyWith<$Res> {
  _$OrderLineEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? qtn = null,
    Object? priceUnit = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      qtn: null == qtn
          ? _value.qtn
          : qtn // ignore: cast_nullable_to_non_nullable
              as double,
      priceUnit: null == priceUnit
          ? _value.priceUnit
          : priceUnit // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderLineEntityImplCopyWith<$Res>
    implements $OrderLineEntityCopyWith<$Res> {
  factory _$$OrderLineEntityImplCopyWith(_$OrderLineEntityImpl value,
          $Res Function(_$OrderLineEntityImpl) then) =
      __$$OrderLineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ProductEntity product,
      @JsonKey(name: "qty") double qtn,
      double priceUnit,
      double totalPrice});

  @override
  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$OrderLineEntityImplCopyWithImpl<$Res>
    extends _$OrderLineEntityCopyWithImpl<$Res, _$OrderLineEntityImpl>
    implements _$$OrderLineEntityImplCopyWith<$Res> {
  __$$OrderLineEntityImplCopyWithImpl(
      _$OrderLineEntityImpl _value, $Res Function(_$OrderLineEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? qtn = null,
    Object? priceUnit = null,
    Object? totalPrice = null,
  }) {
    return _then(_$OrderLineEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      qtn: null == qtn
          ? _value.qtn
          : qtn // ignore: cast_nullable_to_non_nullable
              as double,
      priceUnit: null == priceUnit
          ? _value.priceUnit
          : priceUnit // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderLineEntityImpl extends _OrderLineEntity
    with DiagnosticableTreeMixin {
  const _$OrderLineEntityImpl(
      {this.id = 0,
      required this.product,
      @JsonKey(name: "qty") this.qtn = 1,
      this.priceUnit = 0,
      this.totalPrice = 0})
      : super._();

  factory _$OrderLineEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLineEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final ProductEntity product;
  @override
  @JsonKey(name: "qty")
  final double qtn;
  @override
  @JsonKey()
  final double priceUnit;
  @override
  @JsonKey()
  final double totalPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderLineEntity(id: $id, product: $product, qtn: $qtn, priceUnit: $priceUnit, totalPrice: $totalPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderLineEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('qtn', qtn))
      ..add(DiagnosticsProperty('priceUnit', priceUnit))
      ..add(DiagnosticsProperty('totalPrice', totalPrice));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLineEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.qtn, qtn) || other.qtn == qtn) &&
            (identical(other.priceUnit, priceUnit) ||
                other.priceUnit == priceUnit) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, product, qtn, priceUnit, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLineEntityImplCopyWith<_$OrderLineEntityImpl> get copyWith =>
      __$$OrderLineEntityImplCopyWithImpl<_$OrderLineEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLineEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderLineEntity extends OrderLineEntity {
  const factory _OrderLineEntity(
      {final int id,
      required final ProductEntity product,
      @JsonKey(name: "qty") final double qtn,
      final double priceUnit,
      final double totalPrice}) = _$OrderLineEntityImpl;
  const _OrderLineEntity._() : super._();

  factory _OrderLineEntity.fromJson(Map<String, dynamic> json) =
      _$OrderLineEntityImpl.fromJson;

  @override
  int get id;
  @override
  ProductEntity get product;
  @override
  @JsonKey(name: "qty")
  double get qtn;
  @override
  double get priceUnit;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$OrderLineEntityImplCopyWith<_$OrderLineEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
