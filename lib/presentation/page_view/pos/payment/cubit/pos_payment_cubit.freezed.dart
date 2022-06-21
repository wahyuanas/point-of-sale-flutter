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
  List<Item>? get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosPaymentStateCopyWith<PosPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosPaymentStateCopyWith<$Res> {
  factory $PosPaymentStateCopyWith(
          PosPaymentState value, $Res Function(PosPaymentState) then) =
      _$PosPaymentStateCopyWithImpl<$Res>;
  $Res call({List<Item>? items});
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
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosPaymentStateCopyWith<$Res>
    implements $PosPaymentStateCopyWith<$Res> {
  factory _$$_PosPaymentStateCopyWith(
          _$_PosPaymentState value, $Res Function(_$_PosPaymentState) then) =
      __$$_PosPaymentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? items});
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
    Object? items = freezed,
  }) {
    return _then(_$_PosPaymentState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc

class _$_PosPaymentState
    with DiagnosticableTreeMixin
    implements _PosPaymentState {
  const _$_PosPaymentState({required final List<Item>? items}) : _items = items;

  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosPaymentState(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosPaymentState'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosPaymentState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_PosPaymentStateCopyWith<_$_PosPaymentState> get copyWith =>
      __$$_PosPaymentStateCopyWithImpl<_$_PosPaymentState>(this, _$identity);
}

abstract class _PosPaymentState implements PosPaymentState {
  const factory _PosPaymentState({required final List<Item>? items}) =
      _$_PosPaymentState;

  @override
  List<Item>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosPaymentStateCopyWith<_$_PosPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
