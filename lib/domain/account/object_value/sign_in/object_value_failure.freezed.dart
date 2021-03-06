// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'object_value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInObjectValueFailure<T, E> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInObjectValueFailureCopyWith<T, E, SignInObjectValueFailure<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInObjectValueFailureCopyWith<T, E, $Res> {
  factory $SignInObjectValueFailureCopyWith(
          SignInObjectValueFailure<T, E> value,
          $Res Function(SignInObjectValueFailure<T, E>) then) =
      _$SignInObjectValueFailureCopyWithImpl<T, E, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$SignInObjectValueFailureCopyWithImpl<T, E, $Res>
    implements $SignInObjectValueFailureCopyWith<T, E, $Res> {
  _$SignInObjectValueFailureCopyWithImpl(this._value, this._then);

  final SignInObjectValueFailure<T, E> _value;
  // ignore: unused_field
  final $Res Function(SignInObjectValueFailure<T, E>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$EmptyFieldCopyWith<T, E, $Res>
    implements $SignInObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$EmptyFieldCopyWith(
          _$EmptyField<T, E> value, $Res Function(_$EmptyField<T, E>) then) =
      __$$EmptyFieldCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyFieldCopyWithImpl<T, E, $Res>
    extends _$SignInObjectValueFailureCopyWithImpl<T, E, $Res>
    implements _$$EmptyFieldCopyWith<T, E, $Res> {
  __$$EmptyFieldCopyWithImpl(
      _$EmptyField<T, E> _value, $Res Function(_$EmptyField<T, E>) _then)
      : super(_value, (v) => _then(v as _$EmptyField<T, E>));

  @override
  _$EmptyField<T, E> get _value => super._value as _$EmptyField<T, E>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyField<T, E>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyField<T, E>
    with DiagnosticableTreeMixin
    implements EmptyField<T, E> {
  const _$EmptyField({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInObjectValueFailure<$T, $E>.emptyField(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInObjectValueFailure<$T, $E>.emptyField'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyField<T, E> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$EmptyFieldCopyWith<T, E, _$EmptyField<T, E>> get copyWith =>
      __$$EmptyFieldCopyWithImpl<T, E, _$EmptyField<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
  }) {
    return emptyField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
  }) {
    return emptyField?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
  }) {
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
  }) {
    return emptyField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T, E> implements SignInObjectValueFailure<T, E> {
  const factory EmptyField({required final T failedValue}) = _$EmptyField<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyFieldCopyWith<T, E, _$EmptyField<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
