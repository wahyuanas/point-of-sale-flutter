// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_item_pos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogItemPosState {
  List<Item>? get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogItemPosStateCopyWith<CatalogItemPosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogItemPosStateCopyWith<$Res> {
  factory $CatalogItemPosStateCopyWith(
          CatalogItemPosState value, $Res Function(CatalogItemPosState) then) =
      _$CatalogItemPosStateCopyWithImpl<$Res>;
  $Res call({List<Item>? items});
}

/// @nodoc
class _$CatalogItemPosStateCopyWithImpl<$Res>
    implements $CatalogItemPosStateCopyWith<$Res> {
  _$CatalogItemPosStateCopyWithImpl(this._value, this._then);

  final CatalogItemPosState _value;
  // ignore: unused_field
  final $Res Function(CatalogItemPosState) _then;

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
abstract class _$$_CatalogItemPosStateCopyWith<$Res>
    implements $CatalogItemPosStateCopyWith<$Res> {
  factory _$$_CatalogItemPosStateCopyWith(_$_CatalogItemPosState value,
          $Res Function(_$_CatalogItemPosState) then) =
      __$$_CatalogItemPosStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? items});
}

/// @nodoc
class __$$_CatalogItemPosStateCopyWithImpl<$Res>
    extends _$CatalogItemPosStateCopyWithImpl<$Res>
    implements _$$_CatalogItemPosStateCopyWith<$Res> {
  __$$_CatalogItemPosStateCopyWithImpl(_$_CatalogItemPosState _value,
      $Res Function(_$_CatalogItemPosState) _then)
      : super(_value, (v) => _then(v as _$_CatalogItemPosState));

  @override
  _$_CatalogItemPosState get _value => super._value as _$_CatalogItemPosState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_CatalogItemPosState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc

class _$_CatalogItemPosState
    with DiagnosticableTreeMixin
    implements _CatalogItemPosState {
  const _$_CatalogItemPosState({required final List<Item>? items})
      : _items = items;

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
    return 'CatalogItemPosState(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatalogItemPosState'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogItemPosState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CatalogItemPosStateCopyWith<_$_CatalogItemPosState> get copyWith =>
      __$$_CatalogItemPosStateCopyWithImpl<_$_CatalogItemPosState>(
          this, _$identity);
}

abstract class _CatalogItemPosState implements CatalogItemPosState {
  const factory _CatalogItemPosState({required final List<Item>? items}) =
      _$_CatalogItemPosState;

  @override
  List<Item>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogItemPosStateCopyWith<_$_CatalogItemPosState> get copyWith =>
      throw _privateConstructorUsedError;
}
