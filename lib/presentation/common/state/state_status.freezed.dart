// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateStatus<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(E data) success,
    required TResult Function() loading,
    required TResult Function(T failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Success<T, E> value) success,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Failure<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateStatusCopyWith<T, E, $Res> {
  factory $StateStatusCopyWith(
          StateStatus<T, E> value, $Res Function(StateStatus<T, E>) then) =
      _$StateStatusCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$StateStatusCopyWithImpl<T, E, $Res>
    implements $StateStatusCopyWith<T, E, $Res> {
  _$StateStatusCopyWithImpl(this._value, this._then);

  final StateStatus<T, E> _value;
  // ignore: unused_field
  final $Res Function(StateStatus<T, E>) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, E, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T, E> value, $Res Function(_$_Initial<T, E>) then) =
      __$$_InitialCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, E, $Res>
    extends _$StateStatusCopyWithImpl<T, E, $Res>
    implements _$$_InitialCopyWith<T, E, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T, E> _value, $Res Function(_$_Initial<T, E>) _then)
      : super(_value, (v) => _then(v as _$_Initial<T, E>));

  @override
  _$_Initial<T, E> get _value => super._value as _$_Initial<T, E>;
}

/// @nodoc

class _$_Initial<T, E> with DiagnosticableTreeMixin implements _Initial<T, E> {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateStatus<$T, $E>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateStatus<$T, $E>.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(E data) success,
    required TResult Function() loading,
    required TResult Function(T failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
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
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Success<T, E> value) success,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Failure<T, E> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T, E> implements StateStatus<T, E> {
  const factory _Initial() = _$_Initial<T, E>;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<T, E, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<T, E> value, $Res Function(_$_Success<T, E>) then) =
      __$$_SuccessCopyWithImpl<T, E, $Res>;
  $Res call({E data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<T, E, $Res>
    extends _$StateStatusCopyWithImpl<T, E, $Res>
    implements _$$_SuccessCopyWith<T, E, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<T, E> _value, $Res Function(_$_Success<T, E>) _then)
      : super(_value, (v) => _then(v as _$_Success<T, E>));

  @override
  _$_Success<T, E> get _value => super._value as _$_Success<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Success<T, E>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$_Success<T, E> with DiagnosticableTreeMixin implements _Success<T, E> {
  const _$_Success({required this.data});

  @override
  final E data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateStatus<$T, $E>.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateStatus<$T, $E>.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<T, E, _$_Success<T, E>> get copyWith =>
      __$$_SuccessCopyWithImpl<T, E, _$_Success<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(E data) success,
    required TResult Function() loading,
    required TResult Function(T failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Success<T, E> value) success,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Failure<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T, E> implements StateStatus<T, E> {
  const factory _Success({required final E data}) = _$_Success<T, E>;

  E get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<T, E, _$_Success<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, E, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T, E> value, $Res Function(_$_Loading<T, E>) then) =
      __$$_LoadingCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, E, $Res>
    extends _$StateStatusCopyWithImpl<T, E, $Res>
    implements _$$_LoadingCopyWith<T, E, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T, E> _value, $Res Function(_$_Loading<T, E>) _then)
      : super(_value, (v) => _then(v as _$_Loading<T, E>));

  @override
  _$_Loading<T, E> get _value => super._value as _$_Loading<T, E>;
}

/// @nodoc

class _$_Loading<T, E> with DiagnosticableTreeMixin implements _Loading<T, E> {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateStatus<$T, $E>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StateStatus<$T, $E>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(E data) success,
    required TResult Function() loading,
    required TResult Function(T failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Success<T, E> value) success,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Failure<T, E> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T, E> implements StateStatus<T, E> {
  const factory _Loading() = _$_Loading<T, E>;
}

/// @nodoc
abstract class _$$_FailureCopyWith<T, E, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<T, E> value, $Res Function(_$_Failure<T, E>) then) =
      __$$_FailureCopyWithImpl<T, E, $Res>;
  $Res call({T failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<T, E, $Res>
    extends _$StateStatusCopyWithImpl<T, E, $Res>
    implements _$$_FailureCopyWith<T, E, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<T, E> _value, $Res Function(_$_Failure<T, E>) _then)
      : super(_value, (v) => _then(v as _$_Failure<T, E>));

  @override
  _$_Failure<T, E> get _value => super._value as _$_Failure<T, E>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Failure<T, E>(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Failure<T, E> with DiagnosticableTreeMixin implements _Failure<T, E> {
  const _$_Failure({required this.failure});

  @override
  final T failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateStatus<$T, $E>.failure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateStatus<$T, $E>.failure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<T, E> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<T, E, _$_Failure<T, E>> get copyWith =>
      __$$_FailureCopyWithImpl<T, E, _$_Failure<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(E data) success,
    required TResult Function() loading,
    required TResult Function(T failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(E data)? success,
    TResult Function()? loading,
    TResult Function(T failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T, E> value) initial,
    required TResult Function(_Success<T, E> value) success,
    required TResult Function(_Loading<T, E> value) loading,
    required TResult Function(_Failure<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T, E> value)? initial,
    TResult Function(_Success<T, E> value)? success,
    TResult Function(_Loading<T, E> value)? loading,
    TResult Function(_Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T, E> implements StateStatus<T, E> {
  const factory _Failure({required final T failure}) = _$_Failure<T, E>;

  T get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<T, E, _$_Failure<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
