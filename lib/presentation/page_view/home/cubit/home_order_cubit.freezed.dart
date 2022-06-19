// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeOrderState {
  List<Order>? get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeOrderStateCopyWith<HomeOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeOrderStateCopyWith<$Res> {
  factory $HomeOrderStateCopyWith(
          HomeOrderState value, $Res Function(HomeOrderState) then) =
      _$HomeOrderStateCopyWithImpl<$Res>;
  $Res call({List<Order>? orders});
}

/// @nodoc
class _$HomeOrderStateCopyWithImpl<$Res>
    implements $HomeOrderStateCopyWith<$Res> {
  _$HomeOrderStateCopyWithImpl(this._value, this._then);

  final HomeOrderState _value;
  // ignore: unused_field
  final $Res Function(HomeOrderState) _then;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeOrderStateCopyWith<$Res>
    implements $HomeOrderStateCopyWith<$Res> {
  factory _$$_HomeOrderStateCopyWith(
          _$_HomeOrderState value, $Res Function(_$_HomeOrderState) then) =
      __$$_HomeOrderStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Order>? orders});
}

/// @nodoc
class __$$_HomeOrderStateCopyWithImpl<$Res>
    extends _$HomeOrderStateCopyWithImpl<$Res>
    implements _$$_HomeOrderStateCopyWith<$Res> {
  __$$_HomeOrderStateCopyWithImpl(
      _$_HomeOrderState _value, $Res Function(_$_HomeOrderState) _then)
      : super(_value, (v) => _then(v as _$_HomeOrderState));

  @override
  _$_HomeOrderState get _value => super._value as _$_HomeOrderState;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_$_HomeOrderState(
      orders: orders == freezed
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc

class _$_HomeOrderState
    with DiagnosticableTreeMixin
    implements _HomeOrderState {
  const _$_HomeOrderState({required final List<Order>? orders})
      : _orders = orders;

  final List<Order>? _orders;
  @override
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeOrderState(orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeOrderState'))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeOrderState &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  _$$_HomeOrderStateCopyWith<_$_HomeOrderState> get copyWith =>
      __$$_HomeOrderStateCopyWithImpl<_$_HomeOrderState>(this, _$identity);
}

abstract class _HomeOrderState implements HomeOrderState {
  const factory _HomeOrderState({required final List<Order>? orders}) =
      _$_HomeOrderState;

  @override
  List<Order>? get orders => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeOrderStateCopyWith<_$_HomeOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
