// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_form_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerFormCreateState {
  StateStatus<FailureExceptions, Customer> get status =>
      throw _privateConstructorUsedError;
  CreateCustomer get createCustomer => throw _privateConstructorUsedError;
  bool get initial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerFormCreateStateCopyWith<CustomerFormCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFormCreateStateCopyWith<$Res> {
  factory $CustomerFormCreateStateCopyWith(CustomerFormCreateState value,
          $Res Function(CustomerFormCreateState) then) =
      _$CustomerFormCreateStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Customer> status,
      CreateCustomer createCustomer,
      bool initial});

  $StateStatusCopyWith<FailureExceptions, Customer, $Res> get status;
  $CreateCustomerCopyWith<$Res> get createCustomer;
}

/// @nodoc
class _$CustomerFormCreateStateCopyWithImpl<$Res>
    implements $CustomerFormCreateStateCopyWith<$Res> {
  _$CustomerFormCreateStateCopyWithImpl(this._value, this._then);

  final CustomerFormCreateState _value;
  // ignore: unused_field
  final $Res Function(CustomerFormCreateState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? createCustomer = freezed,
    Object? initial = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Customer>,
      createCustomer: createCustomer == freezed
          ? _value.createCustomer
          : createCustomer // ignore: cast_nullable_to_non_nullable
              as CreateCustomer,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, Customer, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, Customer, $Res>(
        _value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $CreateCustomerCopyWith<$Res> get createCustomer {
    return $CreateCustomerCopyWith<$Res>(_value.createCustomer, (value) {
      return _then(_value.copyWith(createCustomer: value));
    });
  }
}

/// @nodoc
abstract class _$$_CustomerFormCreateStateCopyWith<$Res>
    implements $CustomerFormCreateStateCopyWith<$Res> {
  factory _$$_CustomerFormCreateStateCopyWith(_$_CustomerFormCreateState value,
          $Res Function(_$_CustomerFormCreateState) then) =
      __$$_CustomerFormCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Customer> status,
      CreateCustomer createCustomer,
      bool initial});

  @override
  $StateStatusCopyWith<FailureExceptions, Customer, $Res> get status;
  @override
  $CreateCustomerCopyWith<$Res> get createCustomer;
}

/// @nodoc
class __$$_CustomerFormCreateStateCopyWithImpl<$Res>
    extends _$CustomerFormCreateStateCopyWithImpl<$Res>
    implements _$$_CustomerFormCreateStateCopyWith<$Res> {
  __$$_CustomerFormCreateStateCopyWithImpl(_$_CustomerFormCreateState _value,
      $Res Function(_$_CustomerFormCreateState) _then)
      : super(_value, (v) => _then(v as _$_CustomerFormCreateState));

  @override
  _$_CustomerFormCreateState get _value =>
      super._value as _$_CustomerFormCreateState;

  @override
  $Res call({
    Object? status = freezed,
    Object? createCustomer = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$_CustomerFormCreateState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Customer>,
      createCustomer: createCustomer == freezed
          ? _value.createCustomer
          : createCustomer // ignore: cast_nullable_to_non_nullable
              as CreateCustomer,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CustomerFormCreateState
    with DiagnosticableTreeMixin
    implements _CustomerFormCreateState {
  const _$_CustomerFormCreateState(
      {required this.status,
      required this.createCustomer,
      required this.initial});

  @override
  final StateStatus<FailureExceptions, Customer> status;
  @override
  final CreateCustomer createCustomer;
  @override
  final bool initial;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerFormCreateState(status: $status, createCustomer: $createCustomer, initial: $initial)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerFormCreateState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createCustomer', createCustomer))
      ..add(DiagnosticsProperty('initial', initial));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerFormCreateState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.createCustomer, createCustomer) &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createCustomer),
      const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerFormCreateStateCopyWith<_$_CustomerFormCreateState>
      get copyWith =>
          __$$_CustomerFormCreateStateCopyWithImpl<_$_CustomerFormCreateState>(
              this, _$identity);
}

abstract class _CustomerFormCreateState implements CustomerFormCreateState {
  const factory _CustomerFormCreateState(
      {required final StateStatus<FailureExceptions, Customer> status,
      required final CreateCustomer createCustomer,
      required final bool initial}) = _$_CustomerFormCreateState;

  @override
  StateStatus<FailureExceptions, Customer> get status =>
      throw _privateConstructorUsedError;
  @override
  CreateCustomer get createCustomer => throw _privateConstructorUsedError;
  @override
  bool get initial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerFormCreateStateCopyWith<_$_CustomerFormCreateState>
      get copyWith => throw _privateConstructorUsedError;
}
