// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailState _$OrderDetailStateFromJson(Map<String, dynamic> json) {
  return _OrderDetailState.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailState {
  List<OrderDetail>? get orderDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailStateCopyWith<OrderDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailStateCopyWith<$Res> {
  factory $OrderDetailStateCopyWith(
          OrderDetailState value, $Res Function(OrderDetailState) then) =
      _$OrderDetailStateCopyWithImpl<$Res>;
  $Res call({List<OrderDetail>? orderDetails});
}

/// @nodoc
class _$OrderDetailStateCopyWithImpl<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  _$OrderDetailStateCopyWithImpl(this._value, this._then);

  final OrderDetailState _value;
  // ignore: unused_field
  final $Res Function(OrderDetailState) _then;

  @override
  $Res call({
    Object? orderDetails = freezed,
  }) {
    return _then(_value.copyWith(
      orderDetails: orderDetails == freezed
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderDetailStateCopyWith<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  factory _$$_OrderDetailStateCopyWith(
          _$_OrderDetailState value, $Res Function(_$_OrderDetailState) then) =
      __$$_OrderDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderDetail>? orderDetails});
}

/// @nodoc
class __$$_OrderDetailStateCopyWithImpl<$Res>
    extends _$OrderDetailStateCopyWithImpl<$Res>
    implements _$$_OrderDetailStateCopyWith<$Res> {
  __$$_OrderDetailStateCopyWithImpl(
      _$_OrderDetailState _value, $Res Function(_$_OrderDetailState) _then)
      : super(_value, (v) => _then(v as _$_OrderDetailState));

  @override
  _$_OrderDetailState get _value => super._value as _$_OrderDetailState;

  @override
  $Res call({
    Object? orderDetails = freezed,
  }) {
    return _then(_$_OrderDetailState(
      orderDetails: orderDetails == freezed
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailState
    with DiagnosticableTreeMixin
    implements _OrderDetailState {
  const _$_OrderDetailState({required final List<OrderDetail>? orderDetails})
      : _orderDetails = orderDetails;

  factory _$_OrderDetailState.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailStateFromJson(json);

  final List<OrderDetail>? _orderDetails;
  @override
  List<OrderDetail>? get orderDetails {
    final value = _orderDetails;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderDetailState(orderDetails: $orderDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderDetailState'))
      ..add(DiagnosticsProperty('orderDetails', orderDetails));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailState &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderDetails));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDetailStateCopyWith<_$_OrderDetailState> get copyWith =>
      __$$_OrderDetailStateCopyWithImpl<_$_OrderDetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailStateToJson(this);
  }
}

abstract class _OrderDetailState implements OrderDetailState {
  const factory _OrderDetailState(
      {required final List<OrderDetail>? orderDetails}) = _$_OrderDetailState;

  factory _OrderDetailState.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailState.fromJson;

  @override
  List<OrderDetail>? get orderDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailStateCopyWith<_$_OrderDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
