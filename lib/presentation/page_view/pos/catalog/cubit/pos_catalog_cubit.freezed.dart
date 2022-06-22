// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_catalog_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosCatalogState {
  List<Item>? get items => throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosCatalogStateCopyWith<PosCatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCatalogStateCopyWith<$Res> {
  factory $PosCatalogStateCopyWith(
          PosCatalogState value, $Res Function(PosCatalogState) then) =
      _$PosCatalogStateCopyWithImpl<$Res>;
  $Res call({List<Item>? items, String? keyWord});
}

/// @nodoc
class _$PosCatalogStateCopyWithImpl<$Res>
    implements $PosCatalogStateCopyWith<$Res> {
  _$PosCatalogStateCopyWithImpl(this._value, this._then);

  final PosCatalogState _value;
  // ignore: unused_field
  final $Res Function(PosCatalogState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosCatalogStateCopyWith<$Res>
    implements $PosCatalogStateCopyWith<$Res> {
  factory _$$_PosCatalogStateCopyWith(
          _$_PosCatalogState value, $Res Function(_$_PosCatalogState) then) =
      __$$_PosCatalogStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? items, String? keyWord});
}

/// @nodoc
class __$$_PosCatalogStateCopyWithImpl<$Res>
    extends _$PosCatalogStateCopyWithImpl<$Res>
    implements _$$_PosCatalogStateCopyWith<$Res> {
  __$$_PosCatalogStateCopyWithImpl(
      _$_PosCatalogState _value, $Res Function(_$_PosCatalogState) _then)
      : super(_value, (v) => _then(v as _$_PosCatalogState));

  @override
  _$_PosCatalogState get _value => super._value as _$_PosCatalogState;

  @override
  $Res call({
    Object? items = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosCatalogState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosCatalogState
    with DiagnosticableTreeMixin
    implements _PosCatalogState {
  const _$_PosCatalogState(
      {required final List<Item>? items, required this.keyWord})
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
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosCatalogState(items: $items, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosCatalogState'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosCatalogState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosCatalogStateCopyWith<_$_PosCatalogState> get copyWith =>
      __$$_PosCatalogStateCopyWithImpl<_$_PosCatalogState>(this, _$identity);
}

abstract class _PosCatalogState implements PosCatalogState {
  const factory _PosCatalogState(
      {required final List<Item>? items,
      required final String? keyWord}) = _$_PosCatalogState;

  @override
  List<Item>? get items => throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosCatalogStateCopyWith<_$_PosCatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
