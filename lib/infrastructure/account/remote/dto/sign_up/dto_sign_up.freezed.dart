// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dto_sign_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DtoSignUpRequest _$DtoSignUpRequestFromJson(Map<String, dynamic> json) {
  return _DtoSignUpRequest.fromJson(json);
}

/// @nodoc
mixin _$DtoSignUpRequest {
  String get companyName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get outletsNumber => throw _privateConstructorUsedError;
  int get businessType => throw _privateConstructorUsedError;
  int? get mainBusinessType => throw _privateConstructorUsedError;
  String? get coreBusinessType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoSignUpRequestCopyWith<DtoSignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoSignUpRequestCopyWith<$Res> {
  factory $DtoSignUpRequestCopyWith(
          DtoSignUpRequest value, $Res Function(DtoSignUpRequest) then) =
      _$DtoSignUpRequestCopyWithImpl<$Res>;
  $Res call(
      {String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType,
      int? mainBusinessType,
      String? coreBusinessType});
}

/// @nodoc
class _$DtoSignUpRequestCopyWithImpl<$Res>
    implements $DtoSignUpRequestCopyWith<$Res> {
  _$DtoSignUpRequestCopyWithImpl(this._value, this._then);

  final DtoSignUpRequest _value;
  // ignore: unused_field
  final $Res Function(DtoSignUpRequest) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
    Object? mainBusinessType = freezed,
    Object? coreBusinessType = freezed,
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
      mainBusinessType: mainBusinessType == freezed
          ? _value.mainBusinessType
          : mainBusinessType // ignore: cast_nullable_to_non_nullable
              as int?,
      coreBusinessType: coreBusinessType == freezed
          ? _value.coreBusinessType
          : coreBusinessType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoSignUpRequestCopyWith<$Res>
    implements $DtoSignUpRequestCopyWith<$Res> {
  factory _$$_DtoSignUpRequestCopyWith(
          _$_DtoSignUpRequest value, $Res Function(_$_DtoSignUpRequest) then) =
      __$$_DtoSignUpRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType,
      int? mainBusinessType,
      String? coreBusinessType});
}

/// @nodoc
class __$$_DtoSignUpRequestCopyWithImpl<$Res>
    extends _$DtoSignUpRequestCopyWithImpl<$Res>
    implements _$$_DtoSignUpRequestCopyWith<$Res> {
  __$$_DtoSignUpRequestCopyWithImpl(
      _$_DtoSignUpRequest _value, $Res Function(_$_DtoSignUpRequest) _then)
      : super(_value, (v) => _then(v as _$_DtoSignUpRequest));

  @override
  _$_DtoSignUpRequest get _value => super._value as _$_DtoSignUpRequest;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
    Object? mainBusinessType = freezed,
    Object? coreBusinessType = freezed,
  }) {
    return _then(_$_DtoSignUpRequest(
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
      mainBusinessType: mainBusinessType == freezed
          ? _value.mainBusinessType
          : mainBusinessType // ignore: cast_nullable_to_non_nullable
              as int?,
      coreBusinessType: coreBusinessType == freezed
          ? _value.coreBusinessType
          : coreBusinessType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoSignUpRequest extends _DtoSignUpRequest {
  const _$_DtoSignUpRequest(
      {required this.companyName,
      required this.phoneNumber,
      required this.email,
      required this.address,
      required this.outletsNumber,
      required this.businessType,
      required this.mainBusinessType,
      required this.coreBusinessType})
      : super._();

  factory _$_DtoSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DtoSignUpRequestFromJson(json);

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
  final int? mainBusinessType;
  @override
  final String? coreBusinessType;

  @override
  String toString() {
    return 'DtoSignUpRequest(companyName: $companyName, phoneNumber: $phoneNumber, email: $email, address: $address, outletsNumber: $outletsNumber, businessType: $businessType, mainBusinessType: $mainBusinessType, coreBusinessType: $coreBusinessType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoSignUpRequest &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.outletsNumber, outletsNumber) &&
            const DeepCollectionEquality()
                .equals(other.businessType, businessType) &&
            const DeepCollectionEquality()
                .equals(other.mainBusinessType, mainBusinessType) &&
            const DeepCollectionEquality()
                .equals(other.coreBusinessType, coreBusinessType));
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
      const DeepCollectionEquality().hash(businessType),
      const DeepCollectionEquality().hash(mainBusinessType),
      const DeepCollectionEquality().hash(coreBusinessType));

  @JsonKey(ignore: true)
  @override
  _$$_DtoSignUpRequestCopyWith<_$_DtoSignUpRequest> get copyWith =>
      __$$_DtoSignUpRequestCopyWithImpl<_$_DtoSignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoSignUpRequestToJson(this);
  }
}

abstract class _DtoSignUpRequest extends DtoSignUpRequest {
  const factory _DtoSignUpRequest(
      {required final String companyName,
      required final String phoneNumber,
      required final String email,
      required final String address,
      required final int outletsNumber,
      required final int businessType,
      required final int? mainBusinessType,
      required final String? coreBusinessType}) = _$_DtoSignUpRequest;
  const _DtoSignUpRequest._() : super._();

  factory _DtoSignUpRequest.fromJson(Map<String, dynamic> json) =
      _$_DtoSignUpRequest.fromJson;

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
  int? get mainBusinessType => throw _privateConstructorUsedError;
  @override
  String? get coreBusinessType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DtoSignUpRequestCopyWith<_$_DtoSignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DtoSignUpResponse _$DtoSignUpResponseFromJson(Map<String, dynamic> json) {
  return _DtoSignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$DtoSignUpResponse {
  int get id => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get outletsNumber => throw _privateConstructorUsedError;
  int get businessType => throw _privateConstructorUsedError;
  int? get mainBusinessType => throw _privateConstructorUsedError;
  String? get coreBusinessType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoSignUpResponseCopyWith<DtoSignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoSignUpResponseCopyWith<$Res> {
  factory $DtoSignUpResponseCopyWith(
          DtoSignUpResponse value, $Res Function(DtoSignUpResponse) then) =
      _$DtoSignUpResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType,
      int? mainBusinessType,
      String? coreBusinessType});
}

/// @nodoc
class _$DtoSignUpResponseCopyWithImpl<$Res>
    implements $DtoSignUpResponseCopyWith<$Res> {
  _$DtoSignUpResponseCopyWithImpl(this._value, this._then);

  final DtoSignUpResponse _value;
  // ignore: unused_field
  final $Res Function(DtoSignUpResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
    Object? mainBusinessType = freezed,
    Object? coreBusinessType = freezed,
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
      mainBusinessType: mainBusinessType == freezed
          ? _value.mainBusinessType
          : mainBusinessType // ignore: cast_nullable_to_non_nullable
              as int?,
      coreBusinessType: coreBusinessType == freezed
          ? _value.coreBusinessType
          : coreBusinessType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoSignUpResponseCopyWith<$Res>
    implements $DtoSignUpResponseCopyWith<$Res> {
  factory _$$_DtoSignUpResponseCopyWith(_$_DtoSignUpResponse value,
          $Res Function(_$_DtoSignUpResponse) then) =
      __$$_DtoSignUpResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String companyName,
      String phoneNumber,
      String email,
      String address,
      int outletsNumber,
      int businessType,
      int? mainBusinessType,
      String? coreBusinessType});
}

/// @nodoc
class __$$_DtoSignUpResponseCopyWithImpl<$Res>
    extends _$DtoSignUpResponseCopyWithImpl<$Res>
    implements _$$_DtoSignUpResponseCopyWith<$Res> {
  __$$_DtoSignUpResponseCopyWithImpl(
      _$_DtoSignUpResponse _value, $Res Function(_$_DtoSignUpResponse) _then)
      : super(_value, (v) => _then(v as _$_DtoSignUpResponse));

  @override
  _$_DtoSignUpResponse get _value => super._value as _$_DtoSignUpResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
    Object? mainBusinessType = freezed,
    Object? coreBusinessType = freezed,
  }) {
    return _then(_$_DtoSignUpResponse(
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
      mainBusinessType: mainBusinessType == freezed
          ? _value.mainBusinessType
          : mainBusinessType // ignore: cast_nullable_to_non_nullable
              as int?,
      coreBusinessType: coreBusinessType == freezed
          ? _value.coreBusinessType
          : coreBusinessType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoSignUpResponse extends _DtoSignUpResponse {
  const _$_DtoSignUpResponse(
      {required this.id,
      required this.companyName,
      required this.phoneNumber,
      required this.email,
      required this.address,
      required this.outletsNumber,
      required this.businessType,
      required this.mainBusinessType,
      required this.coreBusinessType})
      : super._();

  factory _$_DtoSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DtoSignUpResponseFromJson(json);

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
  final int? mainBusinessType;
  @override
  final String? coreBusinessType;

  @override
  String toString() {
    return 'DtoSignUpResponse(id: $id, companyName: $companyName, phoneNumber: $phoneNumber, email: $email, address: $address, outletsNumber: $outletsNumber, businessType: $businessType, mainBusinessType: $mainBusinessType, coreBusinessType: $coreBusinessType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoSignUpResponse &&
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
                .equals(other.businessType, businessType) &&
            const DeepCollectionEquality()
                .equals(other.mainBusinessType, mainBusinessType) &&
            const DeepCollectionEquality()
                .equals(other.coreBusinessType, coreBusinessType));
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
      const DeepCollectionEquality().hash(businessType),
      const DeepCollectionEquality().hash(mainBusinessType),
      const DeepCollectionEquality().hash(coreBusinessType));

  @JsonKey(ignore: true)
  @override
  _$$_DtoSignUpResponseCopyWith<_$_DtoSignUpResponse> get copyWith =>
      __$$_DtoSignUpResponseCopyWithImpl<_$_DtoSignUpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoSignUpResponseToJson(this);
  }
}

abstract class _DtoSignUpResponse extends DtoSignUpResponse {
  const factory _DtoSignUpResponse(
      {required final int id,
      required final String companyName,
      required final String phoneNumber,
      required final String email,
      required final String address,
      required final int outletsNumber,
      required final int businessType,
      required final int? mainBusinessType,
      required final String? coreBusinessType}) = _$_DtoSignUpResponse;
  const _DtoSignUpResponse._() : super._();

  factory _DtoSignUpResponse.fromJson(Map<String, dynamic> json) =
      _$_DtoSignUpResponse.fromJson;

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
  int? get mainBusinessType => throw _privateConstructorUsedError;
  @override
  String? get coreBusinessType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DtoSignUpResponseCopyWith<_$_DtoSignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
