// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosMainState {
  int? get idItem => throw _privateConstructorUsedError;
  List<Pos>? get poss => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosMainStateCopyWith<PosMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosMainStateCopyWith<$Res> {
  factory $PosMainStateCopyWith(
          PosMainState value, $Res Function(PosMainState) then) =
      _$PosMainStateCopyWithImpl<$Res>;
  $Res call({int? idItem, List<Pos>? poss});
}

/// @nodoc
class _$PosMainStateCopyWithImpl<$Res> implements $PosMainStateCopyWith<$Res> {
  _$PosMainStateCopyWithImpl(this._value, this._then);

  final PosMainState _value;
  // ignore: unused_field
  final $Res Function(PosMainState) _then;

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
abstract class _$$_PosMainStateCopyWith<$Res>
    implements $PosMainStateCopyWith<$Res> {
  factory _$$_PosMainStateCopyWith(
          _$_PosMainState value, $Res Function(_$_PosMainState) then) =
      __$$_PosMainStateCopyWithImpl<$Res>;
  @override
  $Res call({int? idItem, List<Pos>? poss});
}

/// @nodoc
class __$$_PosMainStateCopyWithImpl<$Res>
    extends _$PosMainStateCopyWithImpl<$Res>
    implements _$$_PosMainStateCopyWith<$Res> {
  __$$_PosMainStateCopyWithImpl(
      _$_PosMainState _value, $Res Function(_$_PosMainState) _then)
      : super(_value, (v) => _then(v as _$_PosMainState));

  @override
  _$_PosMainState get _value => super._value as _$_PosMainState;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? poss = freezed,
  }) {
    return _then(_$_PosMainState(
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

class _$_PosMainState with DiagnosticableTreeMixin implements _PosMainState {
  const _$_PosMainState({required this.idItem, required final List<Pos>? poss})
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
    return 'PosMainState(idItem: $idItem, poss: $poss)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainState'))
      ..add(DiagnosticsProperty('idItem', idItem))
      ..add(DiagnosticsProperty('poss', poss));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosMainState &&
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
  _$$_PosMainStateCopyWith<_$_PosMainState> get copyWith =>
      __$$_PosMainStateCopyWithImpl<_$_PosMainState>(this, _$identity);
}

abstract class _PosMainState implements PosMainState {
  const factory _PosMainState(
      {required final int? idItem,
      required final List<Pos>? poss}) = _$_PosMainState;

  @override
  int? get idItem => throw _privateConstructorUsedError;
  @override
  List<Pos>? get poss => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosMainStateCopyWith<_$_PosMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PosMainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Item item) addItem,
    required TResult Function(Item item) incrementItem,
    required TResult Function(Item item) decrementItem,
    required TResult Function(Item item) changeItem,
    required TResult Function(int? id, bool? value) countItem,
    required TResult Function(bool? value) countAllItem,
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosMainEventCopyWith<$Res> {
  factory $PosMainEventCopyWith(
          PosMainEvent value, $Res Function(PosMainEvent) then) =
      _$PosMainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PosMainEventCopyWithImpl<$Res> implements $PosMainEventCopyWith<$Res> {
  _$PosMainEventCopyWithImpl(this._value, this._then);

  final PosMainEvent _value;
  // ignore: unused_field
  final $Res Function(PosMainEvent) _then;
}

/// @nodoc
abstract class _$$PosStartedEventCopyWith<$Res> {
  factory _$$PosStartedEventCopyWith(
          _$PosStartedEvent value, $Res Function(_$PosStartedEvent) then) =
      __$$PosStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PosStartedEventCopyWithImpl<$Res>
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PosMainEvent.started'));
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PosStartedEvent implements PosMainEvent {
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
class __$$PosAddItemEventCopyWithImpl<$Res>
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.addItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainEvent.addItem'))
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class PosAddItemEvent implements PosMainEvent {
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
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.incrementItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainEvent.incrementItem'))
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (incrementItem != null) {
      return incrementItem(this);
    }
    return orElse();
  }
}

abstract class PosIncrementItemEvent implements PosMainEvent {
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
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.decrementItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainEvent.decrementItem'))
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (decrementItem != null) {
      return decrementItem(this);
    }
    return orElse();
  }
}

abstract class PosDecrementItemEvent implements PosMainEvent {
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
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.changeItem(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainEvent.changeItem'))
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(this);
    }
    return orElse();
  }
}

abstract class PosChangeItemEvent implements PosMainEvent {
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
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.countItem(id: $id, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainEvent.countItem'))
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (countItem != null) {
      return countItem(this);
    }
    return orElse();
  }
}

abstract class PosCountItemEvent implements PosMainEvent {
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
    extends _$PosMainEventCopyWithImpl<$Res>
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
    return 'PosMainEvent.countAllItem(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosMainEvent.countAllItem'))
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
    required TResult Function() initial,
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
    TResult Function()? initial,
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
    TResult Function()? initial,
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
    required TResult Function(PosInitialEvent value) initial,
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
    TResult Function(PosInitialEvent value)? initial,
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (countAllItem != null) {
      return countAllItem(this);
    }
    return orElse();
  }
}

abstract class PosCountAllItemEvent implements PosMainEvent {
  const factory PosCountAllItemEvent({required final bool? value}) =
      _$PosCountAllItemEvent;

  bool? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PosCountAllItemEventCopyWith<_$PosCountAllItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PosInitialEventCopyWith<$Res> {
  factory _$$PosInitialEventCopyWith(
          _$PosInitialEvent value, $Res Function(_$PosInitialEvent) then) =
      __$$PosInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PosInitialEventCopyWithImpl<$Res>
    extends _$PosMainEventCopyWithImpl<$Res>
    implements _$$PosInitialEventCopyWith<$Res> {
  __$$PosInitialEventCopyWithImpl(
      _$PosInitialEvent _value, $Res Function(_$PosInitialEvent) _then)
      : super(_value, (v) => _then(v as _$PosInitialEvent));

  @override
  _$PosInitialEvent get _value => super._value as _$PosInitialEvent;
}

/// @nodoc

class _$PosInitialEvent
    with DiagnosticableTreeMixin
    implements PosInitialEvent {
  const _$PosInitialEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosMainEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PosMainEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PosInitialEvent);
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
    required TResult Function() initial,
  }) {
    return initial();
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
    TResult Function()? initial,
  }) {
    return initial?.call();
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
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
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
    required TResult Function(PosInitialEvent value) initial,
  }) {
    return initial(this);
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
    TResult Function(PosInitialEvent value)? initial,
  }) {
    return initial?.call(this);
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
    TResult Function(PosInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PosInitialEvent implements PosMainEvent {
  const factory PosInitialEvent() = _$PosInitialEvent;
}
