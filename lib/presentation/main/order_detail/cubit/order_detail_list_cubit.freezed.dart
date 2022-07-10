// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailListState _$OrderDetailListStateFromJson(Map<String, dynamic> json) {
  return _OrderDetailListState.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailListState {
  List<OrderDetail>? get orderDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailListStateCopyWith<OrderDetailListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailListStateCopyWith<$Res> {
  factory $OrderDetailListStateCopyWith(OrderDetailListState value,
          $Res Function(OrderDetailListState) then) =
      _$OrderDetailListStateCopyWithImpl<$Res>;
  $Res call({List<OrderDetail>? orderDetails});
}

/// @nodoc
class _$OrderDetailListStateCopyWithImpl<$Res>
    implements $OrderDetailListStateCopyWith<$Res> {
  _$OrderDetailListStateCopyWithImpl(this._value, this._then);

  final OrderDetailListState _value;
  // ignore: unused_field
  final $Res Function(OrderDetailListState) _then;

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
abstract class _$$_OrderDetailListStateCopyWith<$Res>
    implements $OrderDetailListStateCopyWith<$Res> {
  factory _$$_OrderDetailListStateCopyWith(_$_OrderDetailListState value,
          $Res Function(_$_OrderDetailListState) then) =
      __$$_OrderDetailListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderDetail>? orderDetails});
}

/// @nodoc
class __$$_OrderDetailListStateCopyWithImpl<$Res>
    extends _$OrderDetailListStateCopyWithImpl<$Res>
    implements _$$_OrderDetailListStateCopyWith<$Res> {
  __$$_OrderDetailListStateCopyWithImpl(_$_OrderDetailListState _value,
      $Res Function(_$_OrderDetailListState) _then)
      : super(_value, (v) => _then(v as _$_OrderDetailListState));

  @override
  _$_OrderDetailListState get _value => super._value as _$_OrderDetailListState;

  @override
  $Res call({
    Object? orderDetails = freezed,
  }) {
    return _then(_$_OrderDetailListState(
      orderDetails: orderDetails == freezed
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailListState
    with DiagnosticableTreeMixin
    implements _OrderDetailListState {
  const _$_OrderDetailListState(
      {required final List<OrderDetail>? orderDetails})
      : _orderDetails = orderDetails;

  factory _$_OrderDetailListState.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailListStateFromJson(json);

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
    return 'OrderDetailListState(orderDetails: $orderDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderDetailListState'))
      ..add(DiagnosticsProperty('orderDetails', orderDetails));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailListState &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderDetails));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDetailListStateCopyWith<_$_OrderDetailListState> get copyWith =>
      __$$_OrderDetailListStateCopyWithImpl<_$_OrderDetailListState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailListStateToJson(this);
  }
}

abstract class _OrderDetailListState implements OrderDetailListState {
  const factory _OrderDetailListState(
          {required final List<OrderDetail>? orderDetails}) =
      _$_OrderDetailListState;

  factory _OrderDetailListState.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailListState.fromJson;

  @override
  List<OrderDetail>? get orderDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailListStateCopyWith<_$_OrderDetailListState> get copyWith =>
      throw _privateConstructorUsedError;
}
