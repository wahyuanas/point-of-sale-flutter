// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosState {
  int? get idItem => throw _privateConstructorUsedError;
  List<Pos>? get poss => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosStateCopyWith<PosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosStateCopyWith<$Res> {
  factory $PosStateCopyWith(PosState value, $Res Function(PosState) then) =
      _$PosStateCopyWithImpl<$Res>;
  $Res call({int? idItem, List<Pos>? poss});
}

/// @nodoc
class _$PosStateCopyWithImpl<$Res> implements $PosStateCopyWith<$Res> {
  _$PosStateCopyWithImpl(this._value, this._then);

  final PosState _value;
  // ignore: unused_field
  final $Res Function(PosState) _then;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? poss = freezed,
  }) {
    return _then(_value.copyWith(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int?,
      poss: poss == freezed
          ? _value.poss
          : poss // ignore: cast_nullable_to_non_nullable
              as List<Pos>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosStateCopyWith<$Res> implements $PosStateCopyWith<$Res> {
  factory _$$_PosStateCopyWith(
          _$_PosState value, $Res Function(_$_PosState) then) =
      __$$_PosStateCopyWithImpl<$Res>;
  @override
  $Res call({int? idItem, List<Pos>? poss});
}

/// @nodoc
class __$$_PosStateCopyWithImpl<$Res> extends _$PosStateCopyWithImpl<$Res>
    implements _$$_PosStateCopyWith<$Res> {
  __$$_PosStateCopyWithImpl(
      _$_PosState _value, $Res Function(_$_PosState) _then)
      : super(_value, (v) => _then(v as _$_PosState));

  @override
  _$_PosState get _value => super._value as _$_PosState;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? poss = freezed,
  }) {
    return _then(_$_PosState(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int?,
      poss: poss == freezed
          ? _value._poss
          : poss // ignore: cast_nullable_to_non_nullable
              as List<Pos>?,
    ));
  }
}

/// @nodoc

class _$_PosState with DiagnosticableTreeMixin implements _PosState {
  const _$_PosState({required this.idItem, required final List<Pos>? poss})
      : _poss = poss;

  @override
  final int? idItem;
  final List<Pos>? _poss;
  @override
  List<Pos>? get poss {
    final value = _poss;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosState(idItem: $idItem, poss: $poss)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosState'))
      ..add(DiagnosticsProperty('idItem', idItem))
      ..add(DiagnosticsProperty('poss', poss));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosState &&
            const DeepCollectionEquality().equals(other.idItem, idItem) &&
            const DeepCollectionEquality().equals(other._poss, _poss));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idItem),
      const DeepCollectionEquality().hash(_poss));

  @JsonKey(ignore: true)
  @override
  _$$_PosStateCopyWith<_$_PosState> get copyWith =>
      __$$_PosStateCopyWithImpl<_$_PosState>(this, _$identity);
}

abstract class _PosState implements PosState {
  const factory _PosState(
      {required final int? idItem,
      required final List<Pos>? poss}) = _$_PosState;

  @override
  int? get idItem => throw _privateConstructorUsedError;
  @override
  List<Pos>? get poss => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosStateCopyWith<_$_PosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosEventCopyWith<$Res> {
  factory $PosEventCopyWith(PosEvent value, $Res Function(PosEvent) then) =
      _$PosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PosEventCopyWithImpl<$Res> implements $PosEventCopyWith<$Res> {
  _$PosEventCopyWithImpl(this._value, this._then);

  final PosEvent _value;
  // ignore: unused_field
  final $Res Function(PosEvent) _then;
}

/// @nodoc
abstract class _$$PosStartedEventCopyWith<$Res> {
  factory _$$PosStartedEventCopyWith(
          _$PosStartedEvent value, $Res Function(_$PosStartedEvent) then) =
      __$$PosStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PosStartedEventCopyWithImpl<$Res> extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosStartedEventCopyWith<$Res> {
  __$$PosStartedEventCopyWithImpl(
      _$PosStartedEvent _value, $Res Function(_$PosStartedEvent) _then)
      : super(_value, (v) => _then(v as _$PosStartedEvent));

  @override
  _$PosStartedEvent get _value => super._value as _$PosStartedEvent;
}

/// @nodoc

class _$PosStartedEvent
    with DiagnosticableTreeMixin
    implements PosStartedEvent {
  const _$PosStartedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PosEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PosStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PosStartedEvent implements PosEvent {
  const factory PosStartedEvent() = _$PosStartedEvent;
}

/// @nodoc
abstract class _$$PosAddItemEventCopyWith<$Res> {
  factory _$$PosAddItemEventCopyWith(
          _$PosAddItemEvent value, $Res Function(_$PosAddItemEvent) then) =
      __$$PosAddItemEventCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$PosAddItemEventCopyWithImpl<$Res> extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosAddItemEventCopyWith<$Res> {
  __$$PosAddItemEventCopyWithImpl(
      _$PosAddItemEvent _value, $Res Function(_$PosAddItemEvent) _then)
      : super(_value, (v) => _then(v as _$PosAddItemEvent));

  @override
  _$PosAddItemEvent get _value => super._value as _$PosAddItemEvent;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$PosAddItemEvent(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$PosAddItemEvent
    with DiagnosticableTreeMixin
    implements PosAddItemEvent {
  const _$PosAddItemEvent({required this.item});

  @override
  final Item item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.addItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEvent.addItem'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosAddItemEvent &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$PosAddItemEventCopyWith<_$PosAddItemEvent> get copyWith =>
      __$$PosAddItemEventCopyWithImpl<_$PosAddItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class PosAddItemEvent implements PosEvent {
  const factory PosAddItemEvent({required final Item item}) = _$PosAddItemEvent;

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosAddItemEventCopyWith<_$PosAddItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PosIncrementItemEventCopyWith<$Res> {
  factory _$$PosIncrementItemEventCopyWith(_$PosIncrementItemEvent value,
          $Res Function(_$PosIncrementItemEvent) then) =
      __$$PosIncrementItemEventCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$PosIncrementItemEventCopyWithImpl<$Res>
    extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosIncrementItemEventCopyWith<$Res> {
  __$$PosIncrementItemEventCopyWithImpl(_$PosIncrementItemEvent _value,
      $Res Function(_$PosIncrementItemEvent) _then)
      : super(_value, (v) => _then(v as _$PosIncrementItemEvent));

  @override
  _$PosIncrementItemEvent get _value => super._value as _$PosIncrementItemEvent;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$PosIncrementItemEvent(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$PosIncrementItemEvent
    with DiagnosticableTreeMixin
    implements PosIncrementItemEvent {
  const _$PosIncrementItemEvent({required this.item});

  @override
  final Item item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.incrementItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEvent.incrementItem'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosIncrementItemEvent &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$PosIncrementItemEventCopyWith<_$PosIncrementItemEvent> get copyWith =>
      __$$PosIncrementItemEventCopyWithImpl<_$PosIncrementItemEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return incrementItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return incrementItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return incrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return incrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(this);
    }
    return orElse();
  }
}

abstract class PosIncrementItemEvent implements PosEvent {
  const factory PosIncrementItemEvent({required final Item item}) =
      _$PosIncrementItemEvent;

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosIncrementItemEventCopyWith<_$PosIncrementItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PosDecrementItemEventCopyWith<$Res> {
  factory _$$PosDecrementItemEventCopyWith(_$PosDecrementItemEvent value,
          $Res Function(_$PosDecrementItemEvent) then) =
      __$$PosDecrementItemEventCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$PosDecrementItemEventCopyWithImpl<$Res>
    extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosDecrementItemEventCopyWith<$Res> {
  __$$PosDecrementItemEventCopyWithImpl(_$PosDecrementItemEvent _value,
      $Res Function(_$PosDecrementItemEvent) _then)
      : super(_value, (v) => _then(v as _$PosDecrementItemEvent));

  @override
  _$PosDecrementItemEvent get _value => super._value as _$PosDecrementItemEvent;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$PosDecrementItemEvent(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$PosDecrementItemEvent
    with DiagnosticableTreeMixin
    implements PosDecrementItemEvent {
  const _$PosDecrementItemEvent({required this.item});

  @override
  final Item item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.decrementItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEvent.decrementItem'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosDecrementItemEvent &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$PosDecrementItemEventCopyWith<_$PosDecrementItemEvent> get copyWith =>
      __$$PosDecrementItemEventCopyWithImpl<_$PosDecrementItemEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return decrementItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return decrementItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return decrementItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return decrementItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(this);
    }
    return orElse();
  }
}

abstract class PosDecrementItemEvent implements PosEvent {
  const factory PosDecrementItemEvent({required final Item item}) =
      _$PosDecrementItemEvent;

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosDecrementItemEventCopyWith<_$PosDecrementItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PosChangeItemEventCopyWith<$Res> {
  factory _$$PosChangeItemEventCopyWith(_$PosChangeItemEvent value,
          $Res Function(_$PosChangeItemEvent) then) =
      __$$PosChangeItemEventCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$PosChangeItemEventCopyWithImpl<$Res>
    extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosChangeItemEventCopyWith<$Res> {
  __$$PosChangeItemEventCopyWithImpl(
      _$PosChangeItemEvent _value, $Res Function(_$PosChangeItemEvent) _then)
      : super(_value, (v) => _then(v as _$PosChangeItemEvent));

  @override
  _$PosChangeItemEvent get _value => super._value as _$PosChangeItemEvent;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$PosChangeItemEvent(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$PosChangeItemEvent
    with DiagnosticableTreeMixin
    implements PosChangeItemEvent {
  const _$PosChangeItemEvent({required this.item});

  @override
  final Item item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.changeItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEvent.changeItem'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosChangeItemEvent &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$PosChangeItemEventCopyWith<_$PosChangeItemEvent> get copyWith =>
      __$$PosChangeItemEventCopyWithImpl<_$PosChangeItemEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return changeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return changeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return changeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return changeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(this);
    }
    return orElse();
  }
}

abstract class PosChangeItemEvent implements PosEvent {
  const factory PosChangeItemEvent({required final Item item}) =
      _$PosChangeItemEvent;

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosChangeItemEventCopyWith<_$PosChangeItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PosCountItemEventCopyWith<$Res> {
  factory _$$PosCountItemEventCopyWith(
          _$PosCountItemEvent value, $Res Function(_$PosCountItemEvent) then) =
      __$$PosCountItemEventCopyWithImpl<$Res>;
  $Res call({int? id, bool? value});
}

/// @nodoc
class __$$PosCountItemEventCopyWithImpl<$Res>
    extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosCountItemEventCopyWith<$Res> {
  __$$PosCountItemEventCopyWithImpl(
      _$PosCountItemEvent _value, $Res Function(_$PosCountItemEvent) _then)
      : super(_value, (v) => _then(v as _$PosCountItemEvent));

  @override
  _$PosCountItemEvent get _value => super._value as _$PosCountItemEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_$PosCountItemEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$PosCountItemEvent
    with DiagnosticableTreeMixin
    implements PosCountItemEvent {
  const _$PosCountItemEvent({required this.id, required this.value});

  @override
  final int? id;
  @override
  final bool? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.countItem(id: $id, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEvent.countItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosCountItemEvent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$PosCountItemEventCopyWith<_$PosCountItemEvent> get copyWith =>
      __$$PosCountItemEventCopyWithImpl<_$PosCountItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return countItem(id, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return countItem?.call(id, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (countItem != null) {
      return countItem(id, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return countItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return countItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (countItem != null) {
      return countItem(this);
    }
    return orElse();
  }
}

abstract class PosCountItemEvent implements PosEvent {
  const factory PosCountItemEvent(
      {required final int? id,
      required final bool? value}) = _$PosCountItemEvent;

  int? get id => throw _privateConstructorUsedError;
  bool? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosCountItemEventCopyWith<_$PosCountItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PosCountAllItemEventCopyWith<$Res> {
  factory _$$PosCountAllItemEventCopyWith(_$PosCountAllItemEvent value,
          $Res Function(_$PosCountAllItemEvent) then) =
      __$$PosCountAllItemEventCopyWithImpl<$Res>;
  $Res call({bool? value});
}

/// @nodoc
class __$$PosCountAllItemEventCopyWithImpl<$Res>
    extends _$PosEventCopyWithImpl<$Res>
    implements _$$PosCountAllItemEventCopyWith<$Res> {
  __$$PosCountAllItemEventCopyWithImpl(_$PosCountAllItemEvent _value,
      $Res Function(_$PosCountAllItemEvent) _then)
      : super(_value, (v) => _then(v as _$PosCountAllItemEvent));

  @override
  _$PosCountAllItemEvent get _value => super._value as _$PosCountAllItemEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$PosCountAllItemEvent(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$PosCountAllItemEvent
    with DiagnosticableTreeMixin
    implements PosCountAllItemEvent {
  const _$PosCountAllItemEvent({required this.value});

  @override
  final bool? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEvent.countAllItem(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEvent.countAllItem'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosCountAllItemEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$PosCountAllItemEventCopyWith<_$PosCountAllItemEvent> get copyWith =>
      __$$PosCountAllItemEventCopyWithImpl<_$PosCountAllItemEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
  }) {
    return countAllItem(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
  }) {
    return countAllItem?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Item item)? addItem,
    TResult Function(Item item)? incrementItem,
    TResult Function(Item item)? decrementItem,
    TResult Function(Item item)? changeItem,
    TResult Function(int? id, bool? value)? countItem,
    TResult Function(bool? value)? countAllItem,
    required TResult orElse(),
  }) {
    if (countAllItem != null) {
      return countAllItem(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PosStartedEvent value) started,
    required TResult Function(PosAddItemEvent value) addItem,
    required TResult Function(PosIncrementItemEvent value) incrementItem,
    required TResult Function(PosDecrementItemEvent value) decrementItem,
    required TResult Function(PosChangeItemEvent value) changeItem,
    required TResult Function(PosCountItemEvent value) countItem,
    required TResult Function(PosCountAllItemEvent value) countAllItem,
  }) {
    return countAllItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
  }) {
    return countAllItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PosStartedEvent value)? started,
    TResult Function(PosAddItemEvent value)? addItem,
    TResult Function(PosIncrementItemEvent value)? incrementItem,
    TResult Function(PosDecrementItemEvent value)? decrementItem,
    TResult Function(PosChangeItemEvent value)? changeItem,
    TResult Function(PosCountItemEvent value)? countItem,
    TResult Function(PosCountAllItemEvent value)? countAllItem,
    required TResult orElse(),
  }) {
    if (countAllItem != null) {
      return countAllItem(this);
    }
    return orElse();
  }
}

abstract class PosCountAllItemEvent implements PosEvent {
  const factory PosCountAllItemEvent({required final bool? value}) =
      _$PosCountAllItemEvent;

  bool? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosCountAllItemEventCopyWith<_$PosCountAllItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
