// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_customer_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosCustomerListState {
  List<Customer>? get customers => throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosCustomerListStateCopyWith<PosCustomerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCustomerListStateCopyWith<$Res> {
  factory $PosCustomerListStateCopyWith(PosCustomerListState value,
          $Res Function(PosCustomerListState) then) =
      _$PosCustomerListStateCopyWithImpl<$Res>;
  $Res call({List<Customer>? customers, String? keyWord});
}

/// @nodoc
class _$PosCustomerListStateCopyWithImpl<$Res>
    implements $PosCustomerListStateCopyWith<$Res> {
  _$PosCustomerListStateCopyWithImpl(this._value, this._then);

  final PosCustomerListState _value;
  // ignore: unused_field
  final $Res Function(PosCustomerListState) _then;

  @override
  $Res call({
    Object? customers = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosCustomerListStateCopyWith<$Res>
    implements $PosCustomerListStateCopyWith<$Res> {
  factory _$$_PosCustomerListStateCopyWith(_$_PosCustomerListState value,
          $Res Function(_$_PosCustomerListState) then) =
      __$$_PosCustomerListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Customer>? customers, String? keyWord});
}

/// @nodoc
class __$$_PosCustomerListStateCopyWithImpl<$Res>
    extends _$PosCustomerListStateCopyWithImpl<$Res>
    implements _$$_PosCustomerListStateCopyWith<$Res> {
  __$$_PosCustomerListStateCopyWithImpl(_$_PosCustomerListState _value,
      $Res Function(_$_PosCustomerListState) _then)
      : super(_value, (v) => _then(v as _$_PosCustomerListState));

  @override
  _$_PosCustomerListState get _value => super._value as _$_PosCustomerListState;

  @override
  $Res call({
    Object? customers = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosCustomerListState(
      customers: customers == freezed
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosCustomerListState
    with DiagnosticableTreeMixin
    implements _PosCustomerListState {
  const _$_PosCustomerListState(
      {required final List<Customer>? customers, required this.keyWord})
      : _customers = customers;

  final List<Customer>? _customers;
  @override
  List<Customer>? get customers {
    final value = _customers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosCustomerListState(customers: $customers, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosCustomerListState'))
      ..add(DiagnosticsProperty('customers', customers))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosCustomerListState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosCustomerListStateCopyWith<_$_PosCustomerListState> get copyWith =>
      __$$_PosCustomerListStateCopyWithImpl<_$_PosCustomerListState>(
          this, _$identity);
}

abstract class _PosCustomerListState implements PosCustomerListState {
  const factory _PosCustomerListState(
      {required final List<Customer>? customers,
      required final String? keyWord}) = _$_PosCustomerListState;

  @override
  List<Customer>? get customers => throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosCustomerListStateCopyWith<_$_PosCustomerListState> get copyWith =>
      throw _privateConstructorUsedError;
}
