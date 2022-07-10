// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  ItemModel? get item => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailModelCopyWith<OrderDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailModelCopyWith<$Res> {
  factory $OrderDetailModelCopyWith(
          OrderDetailModel value, $Res Function(OrderDetailModel) then) =
      _$OrderDetailModelCopyWithImpl<$Res>;
  $Res call({int id, String uuid, int orderId, ItemModel? item, int accountId});

  $ItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class _$OrderDetailModelCopyWithImpl<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  _$OrderDetailModelCopyWithImpl(this._value, this._then);

  final OrderDetailModel _value;
  // ignore: unused_field
  final $Res Function(OrderDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? orderId = freezed,
    Object? item = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ItemModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailModelCopyWith<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  factory _$$_OrderDetailModelCopyWith(
          _$_OrderDetailModel value, $Res Function(_$_OrderDetailModel) then) =
      __$$_OrderDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String uuid, int orderId, ItemModel? item, int accountId});

  @override
  $ItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_OrderDetailModelCopyWithImpl<$Res>
    extends _$OrderDetailModelCopyWithImpl<$Res>
    implements _$$_OrderDetailModelCopyWith<$Res> {
  __$$_OrderDetailModelCopyWithImpl(
      _$_OrderDetailModel _value, $Res Function(_$_OrderDetailModel) _then)
      : super(_value, (v) => _then(v as _$_OrderDetailModel));

  @override
  _$_OrderDetailModel get _value => super._value as _$_OrderDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? orderId = freezed,
    Object? item = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_OrderDetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailModel extends _OrderDetailModel {
  const _$_OrderDetailModel(
      {required this.id,
      required this.uuid,
      required this.orderId,
      required this.item,
      required this.accountId})
      : super._();

  factory _$_OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailModelFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final int orderId;
  @override
  final ItemModel? item;
  @override
  final int accountId;

  @override
  String toString() {
    return 'OrderDetailModel(id: $id, uuid: $uuid, orderId: $orderId, item: $item, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDetailModelCopyWith<_$_OrderDetailModel> get copyWith =>
      __$$_OrderDetailModelCopyWithImpl<_$_OrderDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailModelToJson(this);
  }
}

abstract class _OrderDetailModel extends OrderDetailModel {
  const factory _OrderDetailModel(
      {required final int id,
      required final String uuid,
      required final int orderId,
      required final ItemModel? item,
      required final int accountId}) = _$_OrderDetailModel;
  const _OrderDetailModel._() : super._();

  factory _OrderDetailModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  int get orderId => throw _privateConstructorUsedError;
  @override
  ItemModel? get item => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailModelCopyWith<_$_OrderDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
