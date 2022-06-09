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
mixin _$SignUp {
  SignUpCompanyName get companyName => throw _privateConstructorUsedError;
  SignUpAddress get addres => throw _privateConstructorUsedError;
  SignUpEmail get email => throw _privateConstructorUsedError;
  SignUpPhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  SignUpOutletsNumber get outletsNumber => throw _privateConstructorUsedError;
  SignUpBusinessType get businessType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpCopyWith<SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
  $Res call(
      {SignUpCompanyName companyName,
      SignUpAddress addres,
      SignUpEmail email,
      SignUpPhoneNumber phoneNumber,
      SignUpOutletsNumber outletsNumber,
      SignUpBusinessType businessType});
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? addres = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as SignUpCompanyName,
      addres: addres == freezed
          ? _value.addres
          : addres // ignore: cast_nullable_to_non_nullable
              as SignUpAddress,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SignUpEmail,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as SignUpPhoneNumber,
      outletsNumber: outletsNumber == freezed
          ? _value.outletsNumber
          : outletsNumber // ignore: cast_nullable_to_non_nullable
              as SignUpOutletsNumber,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as SignUpBusinessType,
    ));
  }
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> implements $SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
  @override
  $Res call(
      {SignUpCompanyName companyName,
      SignUpAddress addres,
      SignUpEmail email,
      SignUpPhoneNumber phoneNumber,
      SignUpOutletsNumber outletsNumber,
      SignUpBusinessType businessType});
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, (v) => _then(v as _$_SignUp));

  @override
  _$_SignUp get _value => super._value as _$_SignUp;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? addres = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? outletsNumber = freezed,
    Object? businessType = freezed,
  }) {
    return _then(_$_SignUp(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as SignUpCompanyName,
      addres: addres == freezed
          ? _value.addres
          : addres // ignore: cast_nullable_to_non_nullable
              as SignUpAddress,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SignUpEmail,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as SignUpPhoneNumber,
      outletsNumber: outletsNumber == freezed
          ? _value.outletsNumber
          : outletsNumber // ignore: cast_nullable_to_non_nullable
              as SignUpOutletsNumber,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as SignUpBusinessType,
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  const _$_SignUp(
      {required this.companyName,
      required this.addres,
      required this.email,
      required this.phoneNumber,
      required this.outletsNumber,
      required this.businessType});

  @override
  final SignUpCompanyName companyName;
  @override
  final SignUpAddress addres;
  @override
  final SignUpEmail email;
  @override
  final SignUpPhoneNumber phoneNumber;
  @override
  final SignUpOutletsNumber outletsNumber;
  @override
  final SignUpBusinessType businessType;

  @override
  String toString() {
    return 'SignUp(companyName: $companyName, addres: $addres, email: $email, phoneNumber: $phoneNumber, outletsNumber: $outletsNumber, businessType: $businessType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUp &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.addres, addres) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.outletsNumber, outletsNumber) &&
            const DeepCollectionEquality()
                .equals(other.businessType, businessType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(addres),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(outletsNumber),
      const DeepCollectionEquality().hash(businessType));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      __$$_SignUpCopyWithImpl<_$_SignUp>(this, _$identity);
}

abstract class _SignUp implements SignUp {
  const factory _SignUp(
      {required final SignUpCompanyName companyName,
      required final SignUpAddress addres,
      required final SignUpEmail email,
      required final SignUpPhoneNumber phoneNumber,
      required final SignUpOutletsNumber outletsNumber,
      required final SignUpBusinessType businessType}) = _$_SignUp;

  @override
  SignUpCompanyName get companyName => throw _privateConstructorUsedError;
  @override
  SignUpAddress get addres => throw _privateConstructorUsedError;
  @override
  SignUpEmail get email => throw _privateConstructorUsedError;
  @override
  SignUpPhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  SignUpOutletsNumber get outletsNumber => throw _privateConstructorUsedError;
  @override
  SignUpBusinessType get businessType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}
