// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosPaymentState {
  StateStatus<FailureExceptions, Order> get status =>
      throw _privateConstructorUsedError;
  CreateOrder? get createOrder => throw _privateConstructorUsedError;
  bool get initial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosPaymentStateCopyWith<PosPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosPaymentStateCopyWith<$Res> {
  factory $PosPaymentStateCopyWith(
          PosPaymentState value, $Res Function(PosPaymentState) then) =
      _$PosPaymentStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Order> status,
      CreateOrder? createOrder,
      bool initial});

  $StateStatusCopyWith<FailureExceptions, Order, $Res> get status;
  $CreateOrderCopyWith<$Res>? get createOrder;
}

/// @nodoc
class _$PosPaymentStateCopyWithImpl<$Res>
    implements $PosPaymentStateCopyWith<$Res> {
  _$PosPaymentStateCopyWithImpl(this._value, this._then);

  final PosPaymentState _value;
  // ignore: unused_field
  final $Res Function(PosPaymentState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? createOrder = freezed,
    Object? initial = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Order>,
      createOrder: createOrder == freezed
          ? _value.createOrder
          : createOrder // ignore: cast_nullable_to_non_nullable
              as CreateOrder?,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, Order, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, Order, $Res>(_value.status,
        (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $CreateOrderCopyWith<$Res>? get createOrder {
    if (_value.createOrder == null) {
      return null;
    }

    return $CreateOrderCopyWith<$Res>(_value.createOrder!, (value) {
      return _then(_value.copyWith(createOrder: value));
    });
  }
}

/// @nodoc
abstract class _$$_PosPaymentStateCopyWith<$Res>
    implements $PosPaymentStateCopyWith<$Res> {
  factory _$$_PosPaymentStateCopyWith(
          _$_PosPaymentState value, $Res Function(_$_PosPaymentState) then) =
      __$$_PosPaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Order> status,
      CreateOrder? createOrder,
      bool initial});

  @override
  $StateStatusCopyWith<FailureExceptions, Order, $Res> get status;
  @override
  $CreateOrderCopyWith<$Res>? get createOrder;
}

/// @nodoc
class __$$_PosPaymentStateCopyWithImpl<$Res>
    extends _$PosPaymentStateCopyWithImpl<$Res>
    implements _$$_PosPaymentStateCopyWith<$Res> {
  __$$_PosPaymentStateCopyWithImpl(
      _$_PosPaymentState _value, $Res Function(_$_PosPaymentState) _then)
      : super(_value, (v) => _then(v as _$_PosPaymentState));

  @override
  _$_PosPaymentState get _value => super._value as _$_PosPaymentState;

  @override
  $Res call({
    Object? status = freezed,
    Object? createOrder = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$_PosPaymentState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Order>,
      createOrder: createOrder == freezed
          ? _value.createOrder
          : createOrder // ignore: cast_nullable_to_non_nullable
              as CreateOrder?,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PosPaymentState
    with DiagnosticableTreeMixin
    implements _PosPaymentState {
  const _$_PosPaymentState(
      {required this.status, required this.createOrder, required this.initial});

  @override
  final StateStatus<FailureExceptions, Order> status;
  @override
  final CreateOrder? createOrder;
  @override
  final bool initial;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosPaymentState(status: $status, createOrder: $createOrder, initial: $initial)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosPaymentState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createOrder', createOrder))
      ..add(DiagnosticsProperty('initial', initial));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosPaymentState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.createOrder, createOrder) &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createOrder),
      const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$$_PosPaymentStateCopyWith<_$_PosPaymentState> get copyWith =>
      __$$_PosPaymentStateCopyWithImpl<_$_PosPaymentState>(this, _$identity);
}

abstract class _PosPaymentState implements PosPaymentState {
  const factory _PosPaymentState(
      {required final StateStatus<FailureExceptions, Order> status,
      required final CreateOrder? createOrder,
      required final bool initial}) = _$_PosPaymentState;

  @override
  StateStatus<FailureExceptions, Order> get status =>
      throw _privateConstructorUsedError;
  @override
  CreateOrder? get createOrder => throw _privateConstructorUsedError;
  @override
  bool get initial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosPaymentStateCopyWith<_$_PosPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
