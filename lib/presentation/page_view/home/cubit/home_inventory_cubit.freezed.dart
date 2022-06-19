// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_inventory_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeInventoryState {
  List<Inventory>? get inventories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeInventoryStateCopyWith<HomeInventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeInventoryStateCopyWith<$Res> {
  factory $HomeInventoryStateCopyWith(
          HomeInventoryState value, $Res Function(HomeInventoryState) then) =
      _$HomeInventoryStateCopyWithImpl<$Res>;
  $Res call({List<Inventory>? inventories});
}

/// @nodoc
class _$HomeInventoryStateCopyWithImpl<$Res>
    implements $HomeInventoryStateCopyWith<$Res> {
  _$HomeInventoryStateCopyWithImpl(this._value, this._then);

  final HomeInventoryState _value;
  // ignore: unused_field
  final $Res Function(HomeInventoryState) _then;

  @override
  $Res call({
    Object? inventories = freezed,
  }) {
    return _then(_value.copyWith(
      inventories: inventories == freezed
          ? _value.inventories
          : inventories // ignore: cast_nullable_to_non_nullable
              as List<Inventory>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeInventoryStateCopyWith<$Res>
    implements $HomeInventoryStateCopyWith<$Res> {
  factory _$$_HomeInventoryStateCopyWith(_$_HomeInventoryState value,
          $Res Function(_$_HomeInventoryState) then) =
      __$$_HomeInventoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Inventory>? inventories});
}

/// @nodoc
class __$$_HomeInventoryStateCopyWithImpl<$Res>
    extends _$HomeInventoryStateCopyWithImpl<$Res>
    implements _$$_HomeInventoryStateCopyWith<$Res> {
  __$$_HomeInventoryStateCopyWithImpl(
      _$_HomeInventoryState _value, $Res Function(_$_HomeInventoryState) _then)
      : super(_value, (v) => _then(v as _$_HomeInventoryState));

  @override
  _$_HomeInventoryState get _value => super._value as _$_HomeInventoryState;

  @override
  $Res call({
    Object? inventories = freezed,
  }) {
    return _then(_$_HomeInventoryState(
      inventories: inventories == freezed
          ? _value._inventories
          : inventories // ignore: cast_nullable_to_non_nullable
              as List<Inventory>?,
    ));
  }
}

/// @nodoc

class _$_HomeInventoryState
    with DiagnosticableTreeMixin
    implements _HomeInventoryState {
  const _$_HomeInventoryState({required final List<Inventory>? inventories})
      : _inventories = inventories;

  final List<Inventory>? _inventories;
  @override
  List<Inventory>? get inventories {
    final value = _inventories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeInventoryState(inventories: $inventories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeInventoryState'))
      ..add(DiagnosticsProperty('inventories', inventories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeInventoryState &&
            const DeepCollectionEquality()
                .equals(other._inventories, _inventories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_inventories));

  @JsonKey(ignore: true)
  @override
  _$$_HomeInventoryStateCopyWith<_$_HomeInventoryState> get copyWith =>
      __$$_HomeInventoryStateCopyWithImpl<_$_HomeInventoryState>(
          this, _$identity);
}

abstract class _HomeInventoryState implements HomeInventoryState {
  const factory _HomeInventoryState(
      {required final List<Inventory>? inventories}) = _$_HomeInventoryState;

  @override
  List<Inventory>? get inventories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeInventoryStateCopyWith<_$_HomeInventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
