// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  StateStatus<FailureExceptions, Account?> get status =>
      throw _privateConstructorUsedError;
  SignUp get signUp => throw _privateConstructorUsedError;
  bool get failOrUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Account?> status,
      SignUp signUp,
      bool failOrUnit});

  $StateStatusCopyWith<FailureExceptions, Account?, $Res> get status;
  $SignUpCopyWith<$Res> get signUp;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? signUp = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Account?>,
      signUp: signUp == freezed
          ? _value.signUp
          : signUp // ignore: cast_nullable_to_non_nullable
              as SignUp,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, Account?, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, Account?, $Res>(
        _value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $SignUpCopyWith<$Res> get signUp {
    return $SignUpCopyWith<$Res>(_value.signUp, (value) {
      return _then(_value.copyWith(signUp: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Account?> status,
      SignUp signUp,
      bool failOrUnit});

  @override
  $StateStatusCopyWith<FailureExceptions, Account?, $Res> get status;
  @override
  $SignUpCopyWith<$Res> get signUp;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? status = freezed,
    Object? signUp = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_$_SignUpState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Account?>,
      signUp: signUp == freezed
          ? _value.signUp
          : signUp // ignore: cast_nullable_to_non_nullable
              as SignUp,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpState with DiagnosticableTreeMixin implements _SignUpState {
  const _$_SignUpState(
      {required this.status, required this.signUp, required this.failOrUnit});

  @override
  final StateStatus<FailureExceptions, Account?> status;
  @override
  final SignUp signUp;
  @override
  final bool failOrUnit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(status: $status, signUp: $signUp, failOrUnit: $failOrUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('signUp', signUp))
      ..add(DiagnosticsProperty('failOrUnit', failOrUnit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.signUp, signUp) &&
            const DeepCollectionEquality()
                .equals(other.failOrUnit, failOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(signUp),
      const DeepCollectionEquality().hash(failOrUnit));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final StateStatus<FailureExceptions, Account?> status,
      required final SignUp signUp,
      required final bool failOrUnit}) = _$_SignUpState;

  @override
  StateStatus<FailureExceptions, Account?> get status =>
      throw _privateConstructorUsedError;
  @override
  SignUp get signUp => throw _privateConstructorUsedError;
  @override
  bool get failOrUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
