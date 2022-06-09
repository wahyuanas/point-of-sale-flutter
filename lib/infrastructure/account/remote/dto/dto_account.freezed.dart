// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dto_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DtoAccountRequest _$DtoAccountRequestFromJson(Map<String, dynamic> json) {
  return _DtoAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$DtoAccountRequest {
  String get companyName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get outletsNumber => throw _privateConstructorUsedError;
  int get businessType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoAccountRequestCopyWith<DtoAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoAccountRequestCopyWith<$Res> {
  factory $DtoAccountRequestCopyWith(
          DtoAccountRequest value, $Res Function(DtoAccountRequest) then) =
      _$DtoAccountRequestCopyWithImpl<$Res>;
  $Res call(
      {String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType});
}

/// @nodoc
class _$DtoAccountRequestCopyWithImpl<$Res>
    implements $DtoAccountRequestCopyWith<$Res> {
  _$DtoAccountRequestCopyWithImpl(this._value, this._then);

  final DtoAccountRequest _value;
  // ignore: unused_field
  final $Res Function(DtoAccountRequest) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outletsNumber: outletsNumber == freezed
          ? _value.outletsNumber
          : outletsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoAccountRequestCopyWith<$Res>
    implements $DtoAccountRequestCopyWith<$Res> {
  factory _$$_DtoAccountRequestCopyWith(_$_DtoAccountRequest value,
          $Res Function(_$_DtoAccountRequest) then) =
      __$$_DtoAccountRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType});
}

/// @nodoc
class __$$_DtoAccountRequestCopyWithImpl<$Res>
    extends _$DtoAccountRequestCopyWithImpl<$Res>
    implements _$$_DtoAccountRequestCopyWith<$Res> {
  __$$_DtoAccountRequestCopyWithImpl(
      _$_DtoAccountRequest _value, $Res Function(_$_DtoAccountRequest) _then)
      : super(_value, (v) => _then(v as _$_DtoAccountRequest));

  @override
  _$_DtoAccountRequest get _value => super._value as _$_DtoAccountRequest;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
  }) {
    return _then(_$_DtoAccountRequest(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outletsNumber: outletsNumber == freezed
          ? _value.outletsNumber
          : outletsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoAccountRequest implements _DtoAccountRequest {
  const _$_DtoAccountRequest(
      {required this.companyName,
      required this.phoneNumber,
      required this.email,
      required this.address,
      required this.outletsNumber,
      required this.businessType});

  factory _$_DtoAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DtoAccountRequestFromJson(json);

  @override
  final String companyName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String address;
  @override
  final int outletsNumber;
  @override
  final int businessType;

  @override
  String toString() {
    return 'DtoAccountRequest(companyName: $companyName, phoneNumber: $phoneNumber, email: $email, address: $address, outletsNumber: $outletsNumber, businessType: $businessType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoAccountRequest &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.outletsNumber, outletsNumber) &&
            const DeepCollectionEquality()
                .equals(other.businessType, businessType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(outletsNumber),
      const DeepCollectionEquality().hash(businessType));

  @JsonKey(ignore: true)
  @override
  _$$_DtoAccountRequestCopyWith<_$_DtoAccountRequest> get copyWith =>
      __$$_DtoAccountRequestCopyWithImpl<_$_DtoAccountRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoAccountRequestToJson(this);
  }
}

abstract class _DtoAccountRequest implements DtoAccountRequest {
  const factory _DtoAccountRequest(
      {required final String companyName,
      required final String phoneNumber,
      required final String email,
      required final String address,
      required final int outletsNumber,
      required final int businessType}) = _$_DtoAccountRequest;

  factory _DtoAccountRequest.fromJson(Map<String, dynamic> json) =
      _$_DtoAccountRequest.fromJson;

  @override
  String get companyName => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  int get outletsNumber => throw _privateConstructorUsedError;
  @override
  int get businessType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DtoAccountRequestCopyWith<_$_DtoAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DtoAccountResponse _$DtoAccountResponseFromJson(Map<String, dynamic> json) {
  return _DtoAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$DtoAccountResponse {
  int get id => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get outletsNumber => throw _privateConstructorUsedError;
  int get businessType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoAccountResponseCopyWith<DtoAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoAccountResponseCopyWith<$Res> {
  factory $DtoAccountResponseCopyWith(
          DtoAccountResponse value, $Res Function(DtoAccountResponse) then) =
      _$DtoAccountResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType});
}

/// @nodoc
class _$DtoAccountResponseCopyWithImpl<$Res>
    implements $DtoAccountResponseCopyWith<$Res> {
  _$DtoAccountResponseCopyWithImpl(this._value, this._then);

  final DtoAccountResponse _value;
  // ignore: unused_field
  final $Res Function(DtoAccountResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outletsNumber: outletsNumber == freezed
          ? _value.outletsNumber
          : outletsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoAccountResponseCopyWith<$Res>
    implements $DtoAccountResponseCopyWith<$Res> {
  factory _$$_DtoAccountResponseCopyWith(_$_DtoAccountResponse value,
          $Res Function(_$_DtoAccountResponse) then) =
      __$$_DtoAccountResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType});
}

/// @nodoc
class __$$_DtoAccountResponseCopyWithImpl<$Res>
    extends _$DtoAccountResponseCopyWithImpl<$Res>
    implements _$$_DtoAccountResponseCopyWith<$Res> {
  __$$_DtoAccountResponseCopyWithImpl(
      _$_DtoAccountResponse _value, $Res Function(_$_DtoAccountResponse) _then)
      : super(_value, (v) => _then(v as _$_DtoAccountResponse));

  @override
  _$_DtoAccountResponse get _value => super._value as _$_DtoAccountResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
  }) {
    return _then(_$_DtoAccountResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      outletsNumber: outletsNumber == freezed
          ? _value.outletsNumber
          : outletsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoAccountResponse extends _DtoAccountResponse {
  const _$_DtoAccountResponse(
      {required this.id,
      required this.companyName,
      required this.phoneNumber,
      required this.email,
      required this.address,
      required this.outletsNumber,
      required this.businessType})
      : super._();

  factory _$_DtoAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DtoAccountResponseFromJson(json);

  @override
  final int id;
  @override
  final String companyName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String address;
  @override
  final int outletsNumber;
  @override
  final int businessType;

  @override
  String toString() {
    return 'DtoAccountResponse(id: $id, companyName: $companyName, phoneNumber: $phoneNumber, email: $email, address: $address, outletsNumber: $outletsNumber, businessType: $businessType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoAccountResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.outletsNumber, outletsNumber) &&
            const DeepCollectionEquality()
                .equals(other.businessType, businessType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(outletsNumber),
      const DeepCollectionEquality().hash(businessType));

  @JsonKey(ignore: true)
  @override
  _$$_DtoAccountResponseCopyWith<_$_DtoAccountResponse> get copyWith =>
      __$$_DtoAccountResponseCopyWithImpl<_$_DtoAccountResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoAccountResponseToJson(this);
  }
}

abstract class _DtoAccountResponse extends DtoAccountResponse {
  const factory _DtoAccountResponse(
      {required final int id,
      required final String companyName,
      required final String phoneNumber,
      required final String email,
      required final String address,
      required final int outletsNumber,
      required final int businessType}) = _$_DtoAccountResponse;
  const _DtoAccountResponse._() : super._();

  factory _DtoAccountResponse.fromJson(Map<String, dynamic> json) =
      _$_DtoAccountResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get companyName => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  int get outletsNumber => throw _privateConstructorUsedError;
  @override
  int get businessType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DtoAccountResponseCopyWith<_$_DtoAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
