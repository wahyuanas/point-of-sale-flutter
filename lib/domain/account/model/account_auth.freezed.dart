// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountAuth _$AccountAuthFromJson(Map<String, dynamic> json) {
  return _AccountAuth.fromJson(json);
}

/// @nodoc
mixin _$AccountAuth {
  Account get account => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountAuthCopyWith<AccountAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountAuthCopyWith<$Res> {
  factory $AccountAuthCopyWith(
          AccountAuth value, $Res Function(AccountAuth) then) =
      _$AccountAuthCopyWithImpl<$Res>;
  $Res call({Account account, String token});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountAuthCopyWithImpl<$Res> implements $AccountAuthCopyWith<$Res> {
  _$AccountAuthCopyWithImpl(this._value, this._then);

  final AccountAuth _value;
  // ignore: unused_field
  final $Res Function(AccountAuth) _then;

  @override
  $Res call({
    Object? account = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$$_AccountAuthCopyWith<$Res>
    implements $AccountAuthCopyWith<$Res> {
  factory _$$_AccountAuthCopyWith(
          _$_AccountAuth value, $Res Function(_$_AccountAuth) then) =
      __$$_AccountAuthCopyWithImpl<$Res>;
  @override
  $Res call({Account account, String token});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_AccountAuthCopyWithImpl<$Res> extends _$AccountAuthCopyWithImpl<$Res>
    implements _$$_AccountAuthCopyWith<$Res> {
  __$$_AccountAuthCopyWithImpl(
      _$_AccountAuth _value, $Res Function(_$_AccountAuth) _then)
      : super(_value, (v) => _then(v as _$_AccountAuth));

  @override
  _$_AccountAuth get _value => super._value as _$_AccountAuth;

  @override
  $Res call({
    Object? account = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AccountAuth(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountAuth implements _AccountAuth {
  const _$_AccountAuth({required this.account, required this.token});

  factory _$_AccountAuth.fromJson(Map<String, dynamic> json) =>
      _$$_AccountAuthFromJson(json);

  @override
  final Account account;
  @override
  final String token;

  @override
  String toString() {
    return 'AccountAuth(account: $account, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountAuth &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AccountAuthCopyWith<_$_AccountAuth> get copyWith =>
      __$$_AccountAuthCopyWithImpl<_$_AccountAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountAuthToJson(this);
  }
}

abstract class _AccountAuth implements AccountAuth {
  const factory _AccountAuth(
      {required final Account account,
      required final String token}) = _$_AccountAuth;

  factory _AccountAuth.fromJson(Map<String, dynamic> json) =
      _$_AccountAuth.fromJson;

  @override
  Account get account => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AccountAuthCopyWith<_$_AccountAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
