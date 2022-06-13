// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dto_sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DtoSignInRequest _$DtoSignInRequestFromJson(Map<String, dynamic> json) {
  return _DtoSignInRequest.fromJson(json);
}

/// @nodoc
mixin _$DtoSignInRequest {
  String get emailOrPhoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoSignInRequestCopyWith<DtoSignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoSignInRequestCopyWith<$Res> {
  factory $DtoSignInRequestCopyWith(
          DtoSignInRequest value, $Res Function(DtoSignInRequest) then) =
      _$DtoSignInRequestCopyWithImpl<$Res>;
  $Res call({String emailOrPhoneNumber, String password});
}

/// @nodoc
class _$DtoSignInRequestCopyWithImpl<$Res>
    implements $DtoSignInRequestCopyWith<$Res> {
  _$DtoSignInRequestCopyWithImpl(this._value, this._then);

  final DtoSignInRequest _value;
  // ignore: unused_field
  final $Res Function(DtoSignInRequest) _then;

  @override
  $Res call({
    Object? emailOrPhoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      emailOrPhoneNumber: emailOrPhoneNumber == freezed
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoSignInRequestCopyWith<$Res>
    implements $DtoSignInRequestCopyWith<$Res> {
  factory _$$_DtoSignInRequestCopyWith(
          _$_DtoSignInRequest value, $Res Function(_$_DtoSignInRequest) then) =
      __$$_DtoSignInRequestCopyWithImpl<$Res>;
  @override
  $Res call({String emailOrPhoneNumber, String password});
}

/// @nodoc
class __$$_DtoSignInRequestCopyWithImpl<$Res>
    extends _$DtoSignInRequestCopyWithImpl<$Res>
    implements _$$_DtoSignInRequestCopyWith<$Res> {
  __$$_DtoSignInRequestCopyWithImpl(
      _$_DtoSignInRequest _value, $Res Function(_$_DtoSignInRequest) _then)
      : super(_value, (v) => _then(v as _$_DtoSignInRequest));

  @override
  _$_DtoSignInRequest get _value => super._value as _$_DtoSignInRequest;

  @override
  $Res call({
    Object? emailOrPhoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_DtoSignInRequest(
      emailOrPhoneNumber: emailOrPhoneNumber == freezed
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoSignInRequest implements _DtoSignInRequest {
  const _$_DtoSignInRequest(
      {required this.emailOrPhoneNumber, required this.password});

  factory _$_DtoSignInRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DtoSignInRequestFromJson(json);

  @override
  final String emailOrPhoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'DtoSignInRequest(emailOrPhoneNumber: $emailOrPhoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoSignInRequest &&
            const DeepCollectionEquality()
                .equals(other.emailOrPhoneNumber, emailOrPhoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailOrPhoneNumber),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_DtoSignInRequestCopyWith<_$_DtoSignInRequest> get copyWith =>
      __$$_DtoSignInRequestCopyWithImpl<_$_DtoSignInRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoSignInRequestToJson(this);
  }
}

abstract class _DtoSignInRequest implements DtoSignInRequest {
  const factory _DtoSignInRequest(
      {required final String emailOrPhoneNumber,
      required final String password}) = _$_DtoSignInRequest;

  factory _DtoSignInRequest.fromJson(Map<String, dynamic> json) =
      _$_DtoSignInRequest.fromJson;

  @override
  String get emailOrPhoneNumber => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DtoSignInRequestCopyWith<_$_DtoSignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DtoSignInResponse _$DtoSignInResponseFromJson(Map<String, dynamic> json) {
  return _DtoSignInResponse.fromJson(json);
}

/// @nodoc
mixin _$DtoSignInResponse {
  DtoAccount get dtoAccount => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoSignInResponseCopyWith<DtoSignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoSignInResponseCopyWith<$Res> {
  factory $DtoSignInResponseCopyWith(
          DtoSignInResponse value, $Res Function(DtoSignInResponse) then) =
      _$DtoSignInResponseCopyWithImpl<$Res>;
  $Res call({DtoAccount dtoAccount, String token});

  $DtoAccountCopyWith<$Res> get dtoAccount;
}

/// @nodoc
class _$DtoSignInResponseCopyWithImpl<$Res>
    implements $DtoSignInResponseCopyWith<$Res> {
  _$DtoSignInResponseCopyWithImpl(this._value, this._then);

  final DtoSignInResponse _value;
  // ignore: unused_field
  final $Res Function(DtoSignInResponse) _then;

  @override
  $Res call({
    Object? dtoAccount = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      dtoAccount: dtoAccount == freezed
          ? _value.dtoAccount
          : dtoAccount // ignore: cast_nullable_to_non_nullable
              as DtoAccount,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DtoAccountCopyWith<$Res> get dtoAccount {
    return $DtoAccountCopyWith<$Res>(_value.dtoAccount, (value) {
      return _then(_value.copyWith(dtoAccount: value));
    });
  }
}

/// @nodoc
abstract class _$$_DtoSignInResponseCopyWith<$Res>
    implements $DtoSignInResponseCopyWith<$Res> {
  factory _$$_DtoSignInResponseCopyWith(_$_DtoSignInResponse value,
          $Res Function(_$_DtoSignInResponse) then) =
      __$$_DtoSignInResponseCopyWithImpl<$Res>;
  @override
  $Res call({DtoAccount dtoAccount, String token});

  @override
  $DtoAccountCopyWith<$Res> get dtoAccount;
}

/// @nodoc
class __$$_DtoSignInResponseCopyWithImpl<$Res>
    extends _$DtoSignInResponseCopyWithImpl<$Res>
    implements _$$_DtoSignInResponseCopyWith<$Res> {
  __$$_DtoSignInResponseCopyWithImpl(
      _$_DtoSignInResponse _value, $Res Function(_$_DtoSignInResponse) _then)
      : super(_value, (v) => _then(v as _$_DtoSignInResponse));

  @override
  _$_DtoSignInResponse get _value => super._value as _$_DtoSignInResponse;

  @override
  $Res call({
    Object? dtoAccount = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_DtoSignInResponse(
      dtoAccount: dtoAccount == freezed
          ? _value.dtoAccount
          : dtoAccount // ignore: cast_nullable_to_non_nullable
              as DtoAccount,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoSignInResponse extends _DtoSignInResponse {
  const _$_DtoSignInResponse({required this.dtoAccount, required this.token})
      : super._();

  factory _$_DtoSignInResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DtoSignInResponseFromJson(json);

  @override
  final DtoAccount dtoAccount;
  @override
  final String token;

  @override
  String toString() {
    return 'DtoSignInResponse(dtoAccount: $dtoAccount, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoSignInResponse &&
            const DeepCollectionEquality()
                .equals(other.dtoAccount, dtoAccount) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dtoAccount),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_DtoSignInResponseCopyWith<_$_DtoSignInResponse> get copyWith =>
      __$$_DtoSignInResponseCopyWithImpl<_$_DtoSignInResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoSignInResponseToJson(this);
  }
}

abstract class _DtoSignInResponse extends DtoSignInResponse {
  const factory _DtoSignInResponse(
      {required final DtoAccount dtoAccount,
      required final String token}) = _$_DtoSignInResponse;
  const _DtoSignInResponse._() : super._();

  factory _DtoSignInResponse.fromJson(Map<String, dynamic> json) =
      _$_DtoSignInResponse.fromJson;

  @override
  DtoAccount get dtoAccount => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DtoSignInResponseCopyWith<_$_DtoSignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
