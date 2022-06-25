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
mixin _$FormItemObjectValueFailure<T, E> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
    required TResult Function(T failedValue) notIntField,
    required TResult Function(T failedValue) notDoubleField,
    required TResult Function(T failedValue) noSpaceAllowed,
    required TResult Function(T failedValue) exceptOneToNineAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(NotIntField<T, E> value) notIntField,
    required TResult Function(NotDoubleField<T, E> value) notDoubleField,
    required TResult Function(NoSpaceAllowed<T, E> value) noSpaceAllowed,
    required TResult Function(exceptOneToNineAllowed<T, E> value)
        exceptOneToNineAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormItemObjectValueFailureCopyWith<T, E, FormItemObjectValueFailure<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  factory $FormItemObjectValueFailureCopyWith(
          FormItemObjectValueFailure<T, E> value,
          $Res Function(FormItemObjectValueFailure<T, E>) then) =
      _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>
    implements $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  _$FormItemObjectValueFailureCopyWithImpl(this._value, this._then);

  final FormItemObjectValueFailure<T, E> _value;
  // ignore: unused_field
  final $Res Function(FormItemObjectValueFailure<T, E>) _then;

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
    implements $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$EmptyFieldCopyWith(
          _$EmptyField<T, E> value, $Res Function(_$EmptyField<T, E>) then) =
      __$$EmptyFieldCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyFieldCopyWithImpl<T, E, $Res>
    extends _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>
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
    return 'FormItemObjectValueFailure<$T, $E>.emptyField(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FormItemObjectValueFailure<$T, $E>.emptyField'))
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
    required TResult Function(T failedValue) notIntField,
    required TResult Function(T failedValue) notDoubleField,
    required TResult Function(T failedValue) noSpaceAllowed,
    required TResult Function(T failedValue) exceptOneToNineAllowed,
  }) {
    return emptyField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
  }) {
    return emptyField?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
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
    required TResult Function(NotIntField<T, E> value) notIntField,
    required TResult Function(NotDoubleField<T, E> value) notDoubleField,
    required TResult Function(NoSpaceAllowed<T, E> value) noSpaceAllowed,
    required TResult Function(exceptOneToNineAllowed<T, E> value)
        exceptOneToNineAllowed,
  }) {
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
  }) {
    return emptyField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T, E> implements FormItemObjectValueFailure<T, E> {
  const factory EmptyField({required final T failedValue}) = _$EmptyField<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyFieldCopyWith<T, E, _$EmptyField<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotIntFieldCopyWith<T, E, $Res>
    implements $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$NotIntFieldCopyWith(
          _$NotIntField<T, E> value, $Res Function(_$NotIntField<T, E>) then) =
      __$$NotIntFieldCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$NotIntFieldCopyWithImpl<T, E, $Res>
    extends _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>
    implements _$$NotIntFieldCopyWith<T, E, $Res> {
  __$$NotIntFieldCopyWithImpl(
      _$NotIntField<T, E> _value, $Res Function(_$NotIntField<T, E>) _then)
      : super(_value, (v) => _then(v as _$NotIntField<T, E>));

  @override
  _$NotIntField<T, E> get _value => super._value as _$NotIntField<T, E>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NotIntField<T, E>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NotIntField<T, E>
    with DiagnosticableTreeMixin
    implements NotIntField<T, E> {
  const _$NotIntField({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormItemObjectValueFailure<$T, $E>.notIntField(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FormItemObjectValueFailure<$T, $E>.notIntField'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotIntField<T, E> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$NotIntFieldCopyWith<T, E, _$NotIntField<T, E>> get copyWith =>
      __$$NotIntFieldCopyWithImpl<T, E, _$NotIntField<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
    required TResult Function(T failedValue) notIntField,
    required TResult Function(T failedValue) notDoubleField,
    required TResult Function(T failedValue) noSpaceAllowed,
    required TResult Function(T failedValue) exceptOneToNineAllowed,
  }) {
    return notIntField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
  }) {
    return notIntField?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (notIntField != null) {
      return notIntField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(NotIntField<T, E> value) notIntField,
    required TResult Function(NotDoubleField<T, E> value) notDoubleField,
    required TResult Function(NoSpaceAllowed<T, E> value) noSpaceAllowed,
    required TResult Function(exceptOneToNineAllowed<T, E> value)
        exceptOneToNineAllowed,
  }) {
    return notIntField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
  }) {
    return notIntField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (notIntField != null) {
      return notIntField(this);
    }
    return orElse();
  }
}

abstract class NotIntField<T, E> implements FormItemObjectValueFailure<T, E> {
  const factory NotIntField({required final T failedValue}) =
      _$NotIntField<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$NotIntFieldCopyWith<T, E, _$NotIntField<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotDoubleFieldCopyWith<T, E, $Res>
    implements $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$NotDoubleFieldCopyWith(_$NotDoubleField<T, E> value,
          $Res Function(_$NotDoubleField<T, E>) then) =
      __$$NotDoubleFieldCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$NotDoubleFieldCopyWithImpl<T, E, $Res>
    extends _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>
    implements _$$NotDoubleFieldCopyWith<T, E, $Res> {
  __$$NotDoubleFieldCopyWithImpl(_$NotDoubleField<T, E> _value,
      $Res Function(_$NotDoubleField<T, E>) _then)
      : super(_value, (v) => _then(v as _$NotDoubleField<T, E>));

  @override
  _$NotDoubleField<T, E> get _value => super._value as _$NotDoubleField<T, E>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NotDoubleField<T, E>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NotDoubleField<T, E>
    with DiagnosticableTreeMixin
    implements NotDoubleField<T, E> {
  const _$NotDoubleField({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormItemObjectValueFailure<$T, $E>.notDoubleField(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FormItemObjectValueFailure<$T, $E>.notDoubleField'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotDoubleField<T, E> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$NotDoubleFieldCopyWith<T, E, _$NotDoubleField<T, E>> get copyWith =>
      __$$NotDoubleFieldCopyWithImpl<T, E, _$NotDoubleField<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
    required TResult Function(T failedValue) notIntField,
    required TResult Function(T failedValue) notDoubleField,
    required TResult Function(T failedValue) noSpaceAllowed,
    required TResult Function(T failedValue) exceptOneToNineAllowed,
  }) {
    return notDoubleField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
  }) {
    return notDoubleField?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (notDoubleField != null) {
      return notDoubleField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(NotIntField<T, E> value) notIntField,
    required TResult Function(NotDoubleField<T, E> value) notDoubleField,
    required TResult Function(NoSpaceAllowed<T, E> value) noSpaceAllowed,
    required TResult Function(exceptOneToNineAllowed<T, E> value)
        exceptOneToNineAllowed,
  }) {
    return notDoubleField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
  }) {
    return notDoubleField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (notDoubleField != null) {
      return notDoubleField(this);
    }
    return orElse();
  }
}

abstract class NotDoubleField<T, E>
    implements FormItemObjectValueFailure<T, E> {
  const factory NotDoubleField({required final T failedValue}) =
      _$NotDoubleField<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$NotDoubleFieldCopyWith<T, E, _$NotDoubleField<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoSpaceAllowedCopyWith<T, E, $Res>
    implements $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$NoSpaceAllowedCopyWith(_$NoSpaceAllowed<T, E> value,
          $Res Function(_$NoSpaceAllowed<T, E>) then) =
      __$$NoSpaceAllowedCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$NoSpaceAllowedCopyWithImpl<T, E, $Res>
    extends _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>
    implements _$$NoSpaceAllowedCopyWith<T, E, $Res> {
  __$$NoSpaceAllowedCopyWithImpl(_$NoSpaceAllowed<T, E> _value,
      $Res Function(_$NoSpaceAllowed<T, E>) _then)
      : super(_value, (v) => _then(v as _$NoSpaceAllowed<T, E>));

  @override
  _$NoSpaceAllowed<T, E> get _value => super._value as _$NoSpaceAllowed<T, E>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NoSpaceAllowed<T, E>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NoSpaceAllowed<T, E>
    with DiagnosticableTreeMixin
    implements NoSpaceAllowed<T, E> {
  const _$NoSpaceAllowed({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormItemObjectValueFailure<$T, $E>.noSpaceAllowed(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FormItemObjectValueFailure<$T, $E>.noSpaceAllowed'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoSpaceAllowed<T, E> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$NoSpaceAllowedCopyWith<T, E, _$NoSpaceAllowed<T, E>> get copyWith =>
      __$$NoSpaceAllowedCopyWithImpl<T, E, _$NoSpaceAllowed<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
    required TResult Function(T failedValue) notIntField,
    required TResult Function(T failedValue) notDoubleField,
    required TResult Function(T failedValue) noSpaceAllowed,
    required TResult Function(T failedValue) exceptOneToNineAllowed,
  }) {
    return noSpaceAllowed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
  }) {
    return noSpaceAllowed?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (noSpaceAllowed != null) {
      return noSpaceAllowed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(NotIntField<T, E> value) notIntField,
    required TResult Function(NotDoubleField<T, E> value) notDoubleField,
    required TResult Function(NoSpaceAllowed<T, E> value) noSpaceAllowed,
    required TResult Function(exceptOneToNineAllowed<T, E> value)
        exceptOneToNineAllowed,
  }) {
    return noSpaceAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
  }) {
    return noSpaceAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (noSpaceAllowed != null) {
      return noSpaceAllowed(this);
    }
    return orElse();
  }
}

abstract class NoSpaceAllowed<T, E>
    implements FormItemObjectValueFailure<T, E> {
  const factory NoSpaceAllowed({required final T failedValue}) =
      _$NoSpaceAllowed<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$NoSpaceAllowedCopyWith<T, E, _$NoSpaceAllowed<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$exceptOneToNineAllowedCopyWith<T, E, $Res>
    implements $FormItemObjectValueFailureCopyWith<T, E, $Res> {
  factory _$$exceptOneToNineAllowedCopyWith(
          _$exceptOneToNineAllowed<T, E> value,
          $Res Function(_$exceptOneToNineAllowed<T, E>) then) =
      __$$exceptOneToNineAllowedCopyWithImpl<T, E, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$exceptOneToNineAllowedCopyWithImpl<T, E, $Res>
    extends _$FormItemObjectValueFailureCopyWithImpl<T, E, $Res>
    implements _$$exceptOneToNineAllowedCopyWith<T, E, $Res> {
  __$$exceptOneToNineAllowedCopyWithImpl(_$exceptOneToNineAllowed<T, E> _value,
      $Res Function(_$exceptOneToNineAllowed<T, E>) _then)
      : super(_value, (v) => _then(v as _$exceptOneToNineAllowed<T, E>));

  @override
  _$exceptOneToNineAllowed<T, E> get _value =>
      super._value as _$exceptOneToNineAllowed<T, E>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$exceptOneToNineAllowed<T, E>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$exceptOneToNineAllowed<T, E>
    with DiagnosticableTreeMixin
    implements exceptOneToNineAllowed<T, E> {
  const _$exceptOneToNineAllowed({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormItemObjectValueFailure<$T, $E>.exceptOneToNineAllowed(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FormItemObjectValueFailure<$T, $E>.exceptOneToNineAllowed'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$exceptOneToNineAllowed<T, E> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$exceptOneToNineAllowedCopyWith<T, E, _$exceptOneToNineAllowed<T, E>>
      get copyWith => __$$exceptOneToNineAllowedCopyWithImpl<T, E,
          _$exceptOneToNineAllowed<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyField,
    required TResult Function(T failedValue) notIntField,
    required TResult Function(T failedValue) notDoubleField,
    required TResult Function(T failedValue) noSpaceAllowed,
    required TResult Function(T failedValue) exceptOneToNineAllowed,
  }) {
    return exceptOneToNineAllowed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
  }) {
    return exceptOneToNineAllowed?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyField,
    TResult Function(T failedValue)? notIntField,
    TResult Function(T failedValue)? notDoubleField,
    TResult Function(T failedValue)? noSpaceAllowed,
    TResult Function(T failedValue)? exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (exceptOneToNineAllowed != null) {
      return exceptOneToNineAllowed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T, E> value) emptyField,
    required TResult Function(NotIntField<T, E> value) notIntField,
    required TResult Function(NotDoubleField<T, E> value) notDoubleField,
    required TResult Function(NoSpaceAllowed<T, E> value) noSpaceAllowed,
    required TResult Function(exceptOneToNineAllowed<T, E> value)
        exceptOneToNineAllowed,
  }) {
    return exceptOneToNineAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
  }) {
    return exceptOneToNineAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T, E> value)? emptyField,
    TResult Function(NotIntField<T, E> value)? notIntField,
    TResult Function(NotDoubleField<T, E> value)? notDoubleField,
    TResult Function(NoSpaceAllowed<T, E> value)? noSpaceAllowed,
    TResult Function(exceptOneToNineAllowed<T, E> value)?
        exceptOneToNineAllowed,
    required TResult orElse(),
  }) {
    if (exceptOneToNineAllowed != null) {
      return exceptOneToNineAllowed(this);
    }
    return orElse();
  }
}

abstract class exceptOneToNineAllowed<T, E>
    implements FormItemObjectValueFailure<T, E> {
  const factory exceptOneToNineAllowed({required final T failedValue}) =
      _$exceptOneToNineAllowed<T, E>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$exceptOneToNineAllowedCopyWith<T, E, _$exceptOneToNineAllowed<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}
