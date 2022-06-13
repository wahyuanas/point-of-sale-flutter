// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignIn {
  SignInEmailOrPhoneNumber get emailOrPhoneNumber =>
      throw _privateConstructorUsedError;
  SignInPassword get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInCopyWith<SignIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res>;
  $Res call(
      {SignInEmailOrPhoneNumber emailOrPhoneNumber, SignInPassword password});
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(this._value, this._then);

  final SignIn _value;
  // ignore: unused_field
  final $Res Function(SignIn) _then;

  @override
  $Res call({
    Object? emailOrPhoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      emailOrPhoneNumber: emailOrPhoneNumber == freezed
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as SignInEmailOrPhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as SignInPassword,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> implements $SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
  @override
  $Res call(
      {SignInEmailOrPhoneNumber emailOrPhoneNumber, SignInPassword password});
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res> extends _$SignInCopyWithImpl<$Res>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, (v) => _then(v as _$_SignIn));

  @override
  _$_SignIn get _value => super._value as _$_SignIn;

  @override
  $Res call({
    Object? emailOrPhoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignIn(
      emailOrPhoneNumber: emailOrPhoneNumber == freezed
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as SignInEmailOrPhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as SignInPassword,
    ));
  }
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn({required this.emailOrPhoneNumber, required this.password});

  @override
  final SignInEmailOrPhoneNumber emailOrPhoneNumber;
  @override
  final SignInPassword password;

  @override
  String toString() {
    return 'SignIn(emailOrPhoneNumber: $emailOrPhoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignIn &&
            const DeepCollectionEquality()
                .equals(other.emailOrPhoneNumber, emailOrPhoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailOrPhoneNumber),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      __$$_SignInCopyWithImpl<_$_SignIn>(this, _$identity);
}

abstract class _SignIn implements SignIn {
  const factory _SignIn(
      {required final SignInEmailOrPhoneNumber emailOrPhoneNumber,
      required final SignInPassword password}) = _$_SignIn;

  @override
  SignInEmailOrPhoneNumber get emailOrPhoneNumber =>
      throw _privateConstructorUsedError;
  @override
  SignInPassword get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}
