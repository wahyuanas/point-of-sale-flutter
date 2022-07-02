// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_on_route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosOnRouteState<T> {
  T get r => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T r) postCatalogList,
    required TResult Function(T r) postCatalogform,
    required TResult Function(T r) purchase,
    required TResult Function(T r) posCatalogItemDetail,
    required TResult Function(T r) postCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCatalogList<T> value) postCatalogList,
    required TResult Function(_PostCatalogform<T> value) postCatalogform,
    required TResult Function(_Purchase<T> value) purchase,
    required TResult Function(_PosCatalogItemDetail<T> value)
        posCatalogItemDetail,
    required TResult Function(_PostCustomerList<T> value) postCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosOnRouteStateCopyWith<T, PosOnRouteState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosOnRouteStateCopyWith<T, $Res> {
  factory $PosOnRouteStateCopyWith(
          PosOnRouteState<T> value, $Res Function(PosOnRouteState<T>) then) =
      _$PosOnRouteStateCopyWithImpl<T, $Res>;
  $Res call({T r});
}

/// @nodoc
class _$PosOnRouteStateCopyWithImpl<T, $Res>
    implements $PosOnRouteStateCopyWith<T, $Res> {
  _$PosOnRouteStateCopyWithImpl(this._value, this._then);

  final PosOnRouteState<T> _value;
  // ignore: unused_field
  final $Res Function(PosOnRouteState<T>) _then;

  @override
  $Res call({
    Object? r = freezed,
  }) {
    return _then(_value.copyWith(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$_PostCatalogListCopyWith<T, $Res>
    implements $PosOnRouteStateCopyWith<T, $Res> {
  factory _$$_PostCatalogListCopyWith(_$_PostCatalogList<T> value,
          $Res Function(_$_PostCatalogList<T>) then) =
      __$$_PostCatalogListCopyWithImpl<T, $Res>;
  @override
  $Res call({T r});
}

/// @nodoc
class __$$_PostCatalogListCopyWithImpl<T, $Res>
    extends _$PosOnRouteStateCopyWithImpl<T, $Res>
    implements _$$_PostCatalogListCopyWith<T, $Res> {
  __$$_PostCatalogListCopyWithImpl(
      _$_PostCatalogList<T> _value, $Res Function(_$_PostCatalogList<T>) _then)
      : super(_value, (v) => _then(v as _$_PostCatalogList<T>));

  @override
  _$_PostCatalogList<T> get _value => super._value as _$_PostCatalogList<T>;

  @override
  $Res call({
    Object? r = freezed,
  }) {
    return _then(_$_PostCatalogList<T>(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_PostCatalogList<T>
    with DiagnosticableTreeMixin
    implements _PostCatalogList<T> {
  const _$_PostCatalogList({required this.r});

  @override
  final T r;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosOnRouteState<$T>.postCatalogList(r: $r)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosOnRouteState<$T>.postCatalogList'))
      ..add(DiagnosticsProperty('r', r));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostCatalogList<T> &&
            const DeepCollectionEquality().equals(other.r, r));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_PostCatalogListCopyWith<T, _$_PostCatalogList<T>> get copyWith =>
      __$$_PostCatalogListCopyWithImpl<T, _$_PostCatalogList<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T r) postCatalogList,
    required TResult Function(T r) postCatalogform,
    required TResult Function(T r) purchase,
    required TResult Function(T r) posCatalogItemDetail,
    required TResult Function(T r) postCustomerList,
  }) {
    return postCatalogList(r);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
  }) {
    return postCatalogList?.call(r);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
    required TResult orElse(),
  }) {
    if (postCatalogList != null) {
      return postCatalogList(r);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCatalogList<T> value) postCatalogList,
    required TResult Function(_PostCatalogform<T> value) postCatalogform,
    required TResult Function(_Purchase<T> value) purchase,
    required TResult Function(_PosCatalogItemDetail<T> value)
        posCatalogItemDetail,
    required TResult Function(_PostCustomerList<T> value) postCustomerList,
  }) {
    return postCatalogList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
  }) {
    return postCatalogList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
    required TResult orElse(),
  }) {
    if (postCatalogList != null) {
      return postCatalogList(this);
    }
    return orElse();
  }
}

abstract class _PostCatalogList<T> implements PosOnRouteState<T> {
  const factory _PostCatalogList({required final T r}) = _$_PostCatalogList<T>;

  @override
  T get r => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostCatalogListCopyWith<T, _$_PostCatalogList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostCatalogformCopyWith<T, $Res>
    implements $PosOnRouteStateCopyWith<T, $Res> {
  factory _$$_PostCatalogformCopyWith(_$_PostCatalogform<T> value,
          $Res Function(_$_PostCatalogform<T>) then) =
      __$$_PostCatalogformCopyWithImpl<T, $Res>;
  @override
  $Res call({T r});
}

/// @nodoc
class __$$_PostCatalogformCopyWithImpl<T, $Res>
    extends _$PosOnRouteStateCopyWithImpl<T, $Res>
    implements _$$_PostCatalogformCopyWith<T, $Res> {
  __$$_PostCatalogformCopyWithImpl(
      _$_PostCatalogform<T> _value, $Res Function(_$_PostCatalogform<T>) _then)
      : super(_value, (v) => _then(v as _$_PostCatalogform<T>));

  @override
  _$_PostCatalogform<T> get _value => super._value as _$_PostCatalogform<T>;

  @override
  $Res call({
    Object? r = freezed,
  }) {
    return _then(_$_PostCatalogform<T>(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_PostCatalogform<T>
    with DiagnosticableTreeMixin
    implements _PostCatalogform<T> {
  const _$_PostCatalogform({required this.r});

  @override
  final T r;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosOnRouteState<$T>.postCatalogform(r: $r)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosOnRouteState<$T>.postCatalogform'))
      ..add(DiagnosticsProperty('r', r));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostCatalogform<T> &&
            const DeepCollectionEquality().equals(other.r, r));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_PostCatalogformCopyWith<T, _$_PostCatalogform<T>> get copyWith =>
      __$$_PostCatalogformCopyWithImpl<T, _$_PostCatalogform<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T r) postCatalogList,
    required TResult Function(T r) postCatalogform,
    required TResult Function(T r) purchase,
    required TResult Function(T r) posCatalogItemDetail,
    required TResult Function(T r) postCustomerList,
  }) {
    return postCatalogform(r);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
  }) {
    return postCatalogform?.call(r);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
    required TResult orElse(),
  }) {
    if (postCatalogform != null) {
      return postCatalogform(r);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCatalogList<T> value) postCatalogList,
    required TResult Function(_PostCatalogform<T> value) postCatalogform,
    required TResult Function(_Purchase<T> value) purchase,
    required TResult Function(_PosCatalogItemDetail<T> value)
        posCatalogItemDetail,
    required TResult Function(_PostCustomerList<T> value) postCustomerList,
  }) {
    return postCatalogform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
  }) {
    return postCatalogform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
    required TResult orElse(),
  }) {
    if (postCatalogform != null) {
      return postCatalogform(this);
    }
    return orElse();
  }
}

abstract class _PostCatalogform<T> implements PosOnRouteState<T> {
  const factory _PostCatalogform({required final T r}) = _$_PostCatalogform<T>;

  @override
  T get r => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostCatalogformCopyWith<T, _$_PostCatalogform<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PurchaseCopyWith<T, $Res>
    implements $PosOnRouteStateCopyWith<T, $Res> {
  factory _$$_PurchaseCopyWith(
          _$_Purchase<T> value, $Res Function(_$_Purchase<T>) then) =
      __$$_PurchaseCopyWithImpl<T, $Res>;
  @override
  $Res call({T r});
}

/// @nodoc
class __$$_PurchaseCopyWithImpl<T, $Res>
    extends _$PosOnRouteStateCopyWithImpl<T, $Res>
    implements _$$_PurchaseCopyWith<T, $Res> {
  __$$_PurchaseCopyWithImpl(
      _$_Purchase<T> _value, $Res Function(_$_Purchase<T>) _then)
      : super(_value, (v) => _then(v as _$_Purchase<T>));

  @override
  _$_Purchase<T> get _value => super._value as _$_Purchase<T>;

  @override
  $Res call({
    Object? r = freezed,
  }) {
    return _then(_$_Purchase<T>(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Purchase<T> with DiagnosticableTreeMixin implements _Purchase<T> {
  const _$_Purchase({required this.r});

  @override
  final T r;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosOnRouteState<$T>.purchase(r: $r)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosOnRouteState<$T>.purchase'))
      ..add(DiagnosticsProperty('r', r));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Purchase<T> &&
            const DeepCollectionEquality().equals(other.r, r));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_PurchaseCopyWith<T, _$_Purchase<T>> get copyWith =>
      __$$_PurchaseCopyWithImpl<T, _$_Purchase<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T r) postCatalogList,
    required TResult Function(T r) postCatalogform,
    required TResult Function(T r) purchase,
    required TResult Function(T r) posCatalogItemDetail,
    required TResult Function(T r) postCustomerList,
  }) {
    return purchase(r);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
  }) {
    return purchase?.call(r);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(r);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCatalogList<T> value) postCatalogList,
    required TResult Function(_PostCatalogform<T> value) postCatalogform,
    required TResult Function(_Purchase<T> value) purchase,
    required TResult Function(_PosCatalogItemDetail<T> value)
        posCatalogItemDetail,
    required TResult Function(_PostCustomerList<T> value) postCustomerList,
  }) {
    return purchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
  }) {
    return purchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(this);
    }
    return orElse();
  }
}

abstract class _Purchase<T> implements PosOnRouteState<T> {
  const factory _Purchase({required final T r}) = _$_Purchase<T>;

  @override
  T get r => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseCopyWith<T, _$_Purchase<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PosCatalogItemDetailCopyWith<T, $Res>
    implements $PosOnRouteStateCopyWith<T, $Res> {
  factory _$$_PosCatalogItemDetailCopyWith(_$_PosCatalogItemDetail<T> value,
          $Res Function(_$_PosCatalogItemDetail<T>) then) =
      __$$_PosCatalogItemDetailCopyWithImpl<T, $Res>;
  @override
  $Res call({T r});
}

/// @nodoc
class __$$_PosCatalogItemDetailCopyWithImpl<T, $Res>
    extends _$PosOnRouteStateCopyWithImpl<T, $Res>
    implements _$$_PosCatalogItemDetailCopyWith<T, $Res> {
  __$$_PosCatalogItemDetailCopyWithImpl(_$_PosCatalogItemDetail<T> _value,
      $Res Function(_$_PosCatalogItemDetail<T>) _then)
      : super(_value, (v) => _then(v as _$_PosCatalogItemDetail<T>));

  @override
  _$_PosCatalogItemDetail<T> get _value =>
      super._value as _$_PosCatalogItemDetail<T>;

  @override
  $Res call({
    Object? r = freezed,
  }) {
    return _then(_$_PosCatalogItemDetail<T>(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_PosCatalogItemDetail<T>
    with DiagnosticableTreeMixin
    implements _PosCatalogItemDetail<T> {
  const _$_PosCatalogItemDetail({required this.r});

  @override
  final T r;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosOnRouteState<$T>.posCatalogItemDetail(r: $r)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PosOnRouteState<$T>.posCatalogItemDetail'))
      ..add(DiagnosticsProperty('r', r));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosCatalogItemDetail<T> &&
            const DeepCollectionEquality().equals(other.r, r));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_PosCatalogItemDetailCopyWith<T, _$_PosCatalogItemDetail<T>>
      get copyWith =>
          __$$_PosCatalogItemDetailCopyWithImpl<T, _$_PosCatalogItemDetail<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T r) postCatalogList,
    required TResult Function(T r) postCatalogform,
    required TResult Function(T r) purchase,
    required TResult Function(T r) posCatalogItemDetail,
    required TResult Function(T r) postCustomerList,
  }) {
    return posCatalogItemDetail(r);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
  }) {
    return posCatalogItemDetail?.call(r);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
    required TResult orElse(),
  }) {
    if (posCatalogItemDetail != null) {
      return posCatalogItemDetail(r);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCatalogList<T> value) postCatalogList,
    required TResult Function(_PostCatalogform<T> value) postCatalogform,
    required TResult Function(_Purchase<T> value) purchase,
    required TResult Function(_PosCatalogItemDetail<T> value)
        posCatalogItemDetail,
    required TResult Function(_PostCustomerList<T> value) postCustomerList,
  }) {
    return posCatalogItemDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
  }) {
    return posCatalogItemDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
    required TResult orElse(),
  }) {
    if (posCatalogItemDetail != null) {
      return posCatalogItemDetail(this);
    }
    return orElse();
  }
}

abstract class _PosCatalogItemDetail<T> implements PosOnRouteState<T> {
  const factory _PosCatalogItemDetail({required final T r}) =
      _$_PosCatalogItemDetail<T>;

  @override
  T get r => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosCatalogItemDetailCopyWith<T, _$_PosCatalogItemDetail<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostCustomerListCopyWith<T, $Res>
    implements $PosOnRouteStateCopyWith<T, $Res> {
  factory _$$_PostCustomerListCopyWith(_$_PostCustomerList<T> value,
          $Res Function(_$_PostCustomerList<T>) then) =
      __$$_PostCustomerListCopyWithImpl<T, $Res>;
  @override
  $Res call({T r});
}

/// @nodoc
class __$$_PostCustomerListCopyWithImpl<T, $Res>
    extends _$PosOnRouteStateCopyWithImpl<T, $Res>
    implements _$$_PostCustomerListCopyWith<T, $Res> {
  __$$_PostCustomerListCopyWithImpl(_$_PostCustomerList<T> _value,
      $Res Function(_$_PostCustomerList<T>) _then)
      : super(_value, (v) => _then(v as _$_PostCustomerList<T>));

  @override
  _$_PostCustomerList<T> get _value => super._value as _$_PostCustomerList<T>;

  @override
  $Res call({
    Object? r = freezed,
  }) {
    return _then(_$_PostCustomerList<T>(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_PostCustomerList<T>
    with DiagnosticableTreeMixin
    implements _PostCustomerList<T> {
  const _$_PostCustomerList({required this.r});

  @override
  final T r;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosOnRouteState<$T>.postCustomerList(r: $r)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosOnRouteState<$T>.postCustomerList'))
      ..add(DiagnosticsProperty('r', r));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostCustomerList<T> &&
            const DeepCollectionEquality().equals(other.r, r));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_PostCustomerListCopyWith<T, _$_PostCustomerList<T>> get copyWith =>
      __$$_PostCustomerListCopyWithImpl<T, _$_PostCustomerList<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T r) postCatalogList,
    required TResult Function(T r) postCatalogform,
    required TResult Function(T r) purchase,
    required TResult Function(T r) posCatalogItemDetail,
    required TResult Function(T r) postCustomerList,
  }) {
    return postCustomerList(r);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
  }) {
    return postCustomerList?.call(r);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T r)? postCatalogList,
    TResult Function(T r)? postCatalogform,
    TResult Function(T r)? purchase,
    TResult Function(T r)? posCatalogItemDetail,
    TResult Function(T r)? postCustomerList,
    required TResult orElse(),
  }) {
    if (postCustomerList != null) {
      return postCustomerList(r);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostCatalogList<T> value) postCatalogList,
    required TResult Function(_PostCatalogform<T> value) postCatalogform,
    required TResult Function(_Purchase<T> value) purchase,
    required TResult Function(_PosCatalogItemDetail<T> value)
        posCatalogItemDetail,
    required TResult Function(_PostCustomerList<T> value) postCustomerList,
  }) {
    return postCustomerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
  }) {
    return postCustomerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostCatalogList<T> value)? postCatalogList,
    TResult Function(_PostCatalogform<T> value)? postCatalogform,
    TResult Function(_Purchase<T> value)? purchase,
    TResult Function(_PosCatalogItemDetail<T> value)? posCatalogItemDetail,
    TResult Function(_PostCustomerList<T> value)? postCustomerList,
    required TResult orElse(),
  }) {
    if (postCustomerList != null) {
      return postCustomerList(this);
    }
    return orElse();
  }
}

abstract class _PostCustomerList<T> implements PosOnRouteState<T> {
  const factory _PostCustomerList({required final T r}) =
      _$_PostCustomerList<T>;

  @override
  T get r => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostCustomerListCopyWith<T, _$_PostCustomerList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
