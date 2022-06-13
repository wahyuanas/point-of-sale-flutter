// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  StateStatus<FailureExceptions, AccountAuth> get status =>
      throw _privateConstructorUsedError;
  SignIn get signIn => throw _privateConstructorUsedError;
  bool get failOrUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, AccountAuth> status,
      SignIn signIn,
      bool failOrUnit});

  $StateStatusCopyWith<FailureExceptions, AccountAuth, $Res> get status;
  $SignInCopyWith<$Res> get signIn;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? signIn = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, AccountAuth>,
      signIn: signIn == freezed
          ? _value.signIn
          : signIn // ignore: cast_nullable_to_non_nullable
              as SignIn,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, AccountAuth, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, AccountAuth, $Res>(
        _value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $SignInCopyWith<$Res> get signIn {
    return $SignInCopyWith<$Res>(_value.signIn, (value) {
      return _then(_value.copyWith(signIn: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, AccountAuth> status,
      SignIn signIn,
      bool failOrUnit});

  @override
  $StateStatusCopyWith<FailureExceptions, AccountAuth, $Res> get status;
  @override
  $SignInCopyWith<$Res> get signIn;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? status = freezed,
    Object? signIn = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_$_SignInState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, AccountAuth>,
      signIn: signIn == freezed
          ? _value.signIn
          : signIn // ignore: cast_nullable_to_non_nullable
              as SignIn,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInState with DiagnosticableTreeMixin implements _SignInState {
  const _$_SignInState(
      {required this.status, required this.signIn, required this.failOrUnit});

  @override
  final StateStatus<FailureExceptions, AccountAuth> status;
  @override
  final SignIn signIn;
  @override
  final bool failOrUnit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState(status: $status, signIn: $signIn, failOrUnit: $failOrUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('signIn', signIn))
      ..add(DiagnosticsProperty('failOrUnit', failOrUnit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.signIn, signIn) &&
            const DeepCollectionEquality()
                .equals(other.failOrUnit, failOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(signIn),
      const DeepCollectionEquality().hash(failOrUnit));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final StateStatus<FailureExceptions, AccountAuth> status,
      required final SignIn signIn,
      required final bool failOrUnit}) = _$_SignInState;

  @override
  StateStatus<FailureExceptions, AccountAuth> get status =>
      throw _privateConstructorUsedError;
  @override
  SignIn get signIn => throw _privateConstructorUsedError;
  @override
  bool get failOrUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
