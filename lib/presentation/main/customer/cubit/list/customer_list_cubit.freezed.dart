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

CustomerState _$CustomerStateFromJson(Map<String, dynamic> json) {
  return _CustomerState.fromJson(json);
}

/// @nodoc
mixin _$CustomerState {
  List<Customer>? get customers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res>;
  $Res call({List<Customer>? customers});
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  final CustomerState _value;
  // ignore: unused_field
  final $Res Function(CustomerState) _then;

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
abstract class _$$_CustomerStateCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_CustomerStateCopyWith(
          _$_CustomerState value, $Res Function(_$_CustomerState) then) =
      __$$_CustomerStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Customer>? customers});
}

/// @nodoc
class __$$_CustomerStateCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements _$$_CustomerStateCopyWith<$Res> {
  __$$_CustomerStateCopyWithImpl(
      _$_CustomerState _value, $Res Function(_$_CustomerState) _then)
      : super(_value, (v) => _then(v as _$_CustomerState));

  @override
  _$_CustomerState get _value => super._value as _$_CustomerState;

  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(_$_CustomerState(
      customers: customers == freezed
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerState with DiagnosticableTreeMixin implements _CustomerState {
  const _$_CustomerState({required final List<Customer>? customers})
      : _customers = customers;

  factory _$_CustomerState.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerStateFromJson(json);

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
    return 'CustomerState(customers: $customers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerState'))
      ..add(DiagnosticsProperty('customers', customers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      __$$_CustomerStateCopyWithImpl<_$_CustomerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerStateToJson(this);
  }
}

abstract class _CustomerState implements CustomerState {
  const factory _CustomerState({required final List<Customer>? customers}) =
      _$_CustomerState;

  factory _CustomerState.fromJson(Map<String, dynamic> json) =
      _$_CustomerState.fromJson;

  @override
  List<Customer>? get customers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}
