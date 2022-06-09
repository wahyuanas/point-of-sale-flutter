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
mixin _$SignUpObjectValueFailure<T, E> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
    required TResult Function(T failedValue) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(EmptyField<T, E> value) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(EmptyField<T, E> value)? invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(EmptyField<T, E> value)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpObjectValueFailureCopyWith<T, E, SignUpObjectValueFailure<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpObjectValueFailureCopyWith<T, E, $Res> {
  factory $SignUpObjectValueFailureCopyWith(
          SignUpObjectValueFailure<T, E> value,
          $Res Function(SignUpObjectValueFailure<T, E>) then) =
      _$SignUpObjectValueFailureCopyWithImpl<T, E, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$SignUpObjectValueFailureCopyWithImpl<T, E, $Res>
    implements $SignUpObjectValueFailureCopyWith<T, E, $Res> {
  _$SignUpObjectValueFailureCopyWithImpl(this._value, this._then);

  final SignUpObjectValueFailure<T, E> _value;
  // ignore: unused_field
  final $Res Function(SignUpObjectValueFailure<T, E>) _then;

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
    implements $SignUpObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$EmptyFieldCopyWith(
          _$EmptyField<T, E> value, $Res Function(_$EmptyField<T, E>) then) =
      __$$EmptyFieldCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyFieldCopyWithImpl<T, E, $Res>
    extends _$SignUpObjectValueFailureCopyWithImpl<T, E, $Res>
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
    return 'SignUpObjectValueFailure<$T, $E>.emptyField(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignUpObjectValueFailure<$T, $E>.emptyField'))
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
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return emptyField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return emptyField?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? invalidEmail,
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
    required TResult Function(EmptyField<T, E> value) invalidEmail,
  }) {
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(EmptyField<T, E> value)? invalidEmail,
  }) {
    return emptyField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(EmptyField<T, E> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T, E> implements SignUpObjectValueFailure<T, E> {
  const factory EmptyField({required final T failedValue}) = _$EmptyField<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyFieldCopyWith<T, E, _$EmptyField<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyFieldCopyWith<T, E, $Res>
    implements $SignUpObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$EmptyFieldCopyWith(
          _$EmptyField<T, E> value, $Res Function(_$EmptyField<T, E>) then) =
      __$$EmptyFieldCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyFieldCopyWithImpl<T, E, $Res>
    extends _$SignUpObjectValueFailureCopyWithImpl<T, E, $Res>
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
    return 'SignUpObjectValueFailure<$T, $E>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignUpObjectValueFailure<$T, $E>.invalidEmail'))
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
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(EmptyField<T, E> value) invalidEmail,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(EmptyField<T, E> value)? invalidEmail,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(EmptyField<T, E> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T, E> implements SignUpObjectValueFailure<T, E> {
  const factory EmptyField({required final T failedValue}) = _$EmptyField<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyFieldCopyWith<T, E, _$EmptyField<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
