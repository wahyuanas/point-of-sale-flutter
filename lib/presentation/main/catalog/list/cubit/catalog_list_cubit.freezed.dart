// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogListState _$CatalogListStateFromJson(Map<String, dynamic> json) {
  return _CatalogListState.fromJson(json);
}

/// @nodoc
mixin _$CatalogListState {
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogListStateCopyWith<CatalogListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogListStateCopyWith<$Res> {
  factory $CatalogListStateCopyWith(
          CatalogListState value, $Res Function(CatalogListState) then) =
      _$CatalogListStateCopyWithImpl<$Res>;
  $Res call({List<Item>? items});
}

/// @nodoc
class _$CatalogListStateCopyWithImpl<$Res>
    implements $CatalogListStateCopyWith<$Res> {
  _$CatalogListStateCopyWithImpl(this._value, this._then);

  final CatalogListState _value;
  // ignore: unused_field
  final $Res Function(CatalogListState) _then;

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
abstract class _$$_CatalogListStateCopyWith<$Res>
    implements $CatalogListStateCopyWith<$Res> {
  factory _$$_CatalogListStateCopyWith(
          _$_CatalogListState value, $Res Function(_$_CatalogListState) then) =
      __$$_CatalogListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? items});
}

/// @nodoc
class __$$_CatalogListStateCopyWithImpl<$Res>
    extends _$CatalogListStateCopyWithImpl<$Res>
    implements _$$_CatalogListStateCopyWith<$Res> {
  __$$_CatalogListStateCopyWithImpl(
      _$_CatalogListState _value, $Res Function(_$_CatalogListState) _then)
      : super(_value, (v) => _then(v as _$_CatalogListState));

  @override
  _$_CatalogListState get _value => super._value as _$_CatalogListState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_CatalogListState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogListState
    with DiagnosticableTreeMixin
    implements _CatalogListState {
  const _$_CatalogListState({required final List<Item>? items})
      : _items = items;

  factory _$_CatalogListState.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogListStateFromJson(json);

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
    return 'CatalogListState(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatalogListState'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogListState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CatalogListStateCopyWith<_$_CatalogListState> get copyWith =>
      __$$_CatalogListStateCopyWithImpl<_$_CatalogListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogListStateToJson(this);
  }
}

abstract class _CatalogListState implements CatalogListState {
  const factory _CatalogListState({required final List<Item>? items}) =
      _$_CatalogListState;

  factory _CatalogListState.fromJson(Map<String, dynamic> json) =
      _$_CatalogListState.fromJson;

  @override
  List<Item>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogListStateCopyWith<_$_CatalogListState> get copyWith =>
      throw _privateConstructorUsedError;
}
