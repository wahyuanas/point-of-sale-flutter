// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) {
  return _OrderDetail.fromJson(json);
}

/// @nodoc
mixin _$OrderDetail {
  int get id => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get disc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailCopyWith<OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailCopyWith<$Res> {
  factory $OrderDetailCopyWith(
          OrderDetail value, $Res Function(OrderDetail) then) =
      _$OrderDetailCopyWithImpl<$Res>;
  $Res call({int id, int orderId, int itemId, int price, int qty, int disc});
}

/// @nodoc
class _$OrderDetailCopyWithImpl<$Res> implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._value, this._then);

  final OrderDetail _value;
  // ignore: unused_field
  final $Res Function(OrderDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? itemId = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? disc = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      disc: disc == freezed
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderDetailCopyWith<$Res>
    implements $OrderDetailCopyWith<$Res> {
  factory _$$_OrderDetailCopyWith(
          _$_OrderDetail value, $Res Function(_$_OrderDetail) then) =
      __$$_OrderDetailCopyWithImpl<$Res>;
  @override
  $Res call({int id, int orderId, int itemId, int price, int qty, int disc});
}

/// @nodoc
class __$$_OrderDetailCopyWithImpl<$Res> extends _$OrderDetailCopyWithImpl<$Res>
    implements _$$_OrderDetailCopyWith<$Res> {
  __$$_OrderDetailCopyWithImpl(
      _$_OrderDetail _value, $Res Function(_$_OrderDetail) _then)
      : super(_value, (v) => _then(v as _$_OrderDetail));

  @override
  _$_OrderDetail get _value => super._value as _$_OrderDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? itemId = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? disc = freezed,
  }) {
    return _then(_$_OrderDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      disc: disc == freezed
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetail extends _OrderDetail {
  const _$_OrderDetail(
      {required this.id,
      required this.orderId,
      required this.itemId,
      required this.price,
      required this.qty,
      required this.disc})
      : super._();

  factory _$_OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailFromJson(json);

  @override
  final int id;
  @override
  final int orderId;
  @override
  final int itemId;
  @override
  final int price;
  @override
  final int qty;
  @override
  final int disc;

  @override
  String toString() {
    return 'OrderDetail(id: $id, orderId: $orderId, itemId: $itemId, price: $price, qty: $qty, disc: $disc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.disc, disc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(disc));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      __$$_OrderDetailCopyWithImpl<_$_OrderDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailToJson(this);
  }
}

abstract class _OrderDetail extends OrderDetail {
  const factory _OrderDetail(
      {required final int id,
      required final int orderId,
      required final int itemId,
      required final int price,
      required final int qty,
      required final int disc}) = _$_OrderDetail;
  const _OrderDetail._() : super._();

  factory _OrderDetail.fromJson(Map<String, dynamic> json) =
      _$_OrderDetail.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get orderId => throw _privateConstructorUsedError;
  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  int get disc => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
