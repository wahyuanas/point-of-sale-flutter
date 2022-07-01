// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerListState _$CustomerListStateFromJson(Map<String, dynamic> json) {
  return _CustomerListState.fromJson(json);
}

/// @nodoc
mixin _$CustomerListState {
  List<Customer>? get customers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerListStateCopyWith<CustomerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListStateCopyWith<$Res> {
  factory $CustomerListStateCopyWith(
          CustomerListState value, $Res Function(CustomerListState) then) =
      _$CustomerListStateCopyWithImpl<$Res>;
  $Res call({List<Customer>? customers});
}

/// @nodoc
class _$CustomerListStateCopyWithImpl<$Res>
    implements $CustomerListStateCopyWith<$Res> {
  _$CustomerListStateCopyWithImpl(this._value, this._then);

  final CustomerListState _value;
  // ignore: unused_field
  final $Res Function(CustomerListState) _then;

  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(_value.copyWith(
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerListStateCopyWith<$Res>
    implements $CustomerListStateCopyWith<$Res> {
  factory _$$_CustomerListStateCopyWith(_$_CustomerListState value,
          $Res Function(_$_CustomerListState) then) =
      __$$_CustomerListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Customer>? customers});
}

/// @nodoc
class __$$_CustomerListStateCopyWithImpl<$Res>
    extends _$CustomerListStateCopyWithImpl<$Res>
    implements _$$_CustomerListStateCopyWith<$Res> {
  __$$_CustomerListStateCopyWithImpl(
      _$_CustomerListState _value, $Res Function(_$_CustomerListState) _then)
      : super(_value, (v) => _then(v as _$_CustomerListState));

  @override
  _$_CustomerListState get _value => super._value as _$_CustomerListState;

  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(_$_CustomerListState(
      customers: customers == freezed
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerListState
    with DiagnosticableTreeMixin
    implements _CustomerListState {
  const _$_CustomerListState({required final List<Customer>? customers})
      : _customers = customers;

  factory _$_CustomerListState.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerListStateFromJson(json);

  final List<Customer>? _customers;
  @override
  List<Customer>? get customers {
    final value = _customers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerListState(customers: $customers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerListState'))
      ..add(DiagnosticsProperty('customers', customers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerListState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerListStateCopyWith<_$_CustomerListState> get copyWith =>
      __$$_CustomerListStateCopyWithImpl<_$_CustomerListState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerListStateToJson(this);
  }
}

abstract class _CustomerListState implements CustomerListState {
  const factory _CustomerListState({required final List<Customer>? customers}) =
      _$_CustomerListState;

  factory _CustomerListState.fromJson(Map<String, dynamic> json) =
      _$_CustomerListState.fromJson;

  @override
  List<Customer>? get customers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerListStateCopyWith<_$_CustomerListState> get copyWith =>
      throw _privateConstructorUsedError;
}
