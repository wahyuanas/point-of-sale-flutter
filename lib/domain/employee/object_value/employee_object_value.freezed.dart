// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateEmployee {
  CreateEmployeeUuid get uuid => throw _privateConstructorUsedError;
  CreateEmployeeName get name => throw _privateConstructorUsedError;
  CreateEmployeeCode get code => throw _privateConstructorUsedError;
  CreateEmployeePhoneNumber get phoneNumber =>
      throw _privateConstructorUsedError;
  CreateEmployeeEmail get email => throw _privateConstructorUsedError;
  CreateEmployeeDepartment get department => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEmployeeCopyWith<CreateEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeCopyWith<$Res> {
  factory $CreateEmployeeCopyWith(
          CreateEmployee value, $Res Function(CreateEmployee) then) =
      _$CreateEmployeeCopyWithImpl<$Res>;
  $Res call(
      {CreateEmployeeUuid uuid,
      CreateEmployeeName name,
      CreateEmployeeCode code,
      CreateEmployeePhoneNumber phoneNumber,
      CreateEmployeeEmail email,
      CreateEmployeeDepartment department});
}

/// @nodoc
class _$CreateEmployeeCopyWithImpl<$Res>
    implements $CreateEmployeeCopyWith<$Res> {
  _$CreateEmployeeCopyWithImpl(this._value, this._then);

  final CreateEmployee _value;
  // ignore: unused_field
  final $Res Function(CreateEmployee) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? department = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeUuid,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeName,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as CreateEmployeePhoneNumber,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeEmail,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartment,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateEmployeeCopyWith<$Res>
    implements $CreateEmployeeCopyWith<$Res> {
  factory _$$_CreateEmployeeCopyWith(
          _$_CreateEmployee value, $Res Function(_$_CreateEmployee) then) =
      __$$_CreateEmployeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreateEmployeeUuid uuid,
      CreateEmployeeName name,
      CreateEmployeeCode code,
      CreateEmployeePhoneNumber phoneNumber,
      CreateEmployeeEmail email,
      CreateEmployeeDepartment department});
}

/// @nodoc
class __$$_CreateEmployeeCopyWithImpl<$Res>
    extends _$CreateEmployeeCopyWithImpl<$Res>
    implements _$$_CreateEmployeeCopyWith<$Res> {
  __$$_CreateEmployeeCopyWithImpl(
      _$_CreateEmployee _value, $Res Function(_$_CreateEmployee) _then)
      : super(_value, (v) => _then(v as _$_CreateEmployee));

  @override
  _$_CreateEmployee get _value => super._value as _$_CreateEmployee;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? department = freezed,
  }) {
    return _then(_$_CreateEmployee(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeUuid,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeName,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as CreateEmployeePhoneNumber,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeEmail,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartment,
    ));
  }
}

/// @nodoc

class _$_CreateEmployee implements _CreateEmployee {
  const _$_CreateEmployee(
      {required this.uuid,
      required this.name,
      required this.code,
      required this.phoneNumber,
      required this.email,
      required this.department});

  @override
  final CreateEmployeeUuid uuid;
  @override
  final CreateEmployeeName name;
  @override
  final CreateEmployeeCode code;
  @override
  final CreateEmployeePhoneNumber phoneNumber;
  @override
  final CreateEmployeeEmail email;
  @override
  final CreateEmployeeDepartment department;

  @override
  String toString() {
    return 'CreateEmployee(uuid: $uuid, name: $name, code: $code, phoneNumber: $phoneNumber, email: $email, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEmployee &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.department, department));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(department));

  @JsonKey(ignore: true)
  @override
  _$$_CreateEmployeeCopyWith<_$_CreateEmployee> get copyWith =>
      __$$_CreateEmployeeCopyWithImpl<_$_CreateEmployee>(this, _$identity);
}

abstract class _CreateEmployee implements CreateEmployee {
  const factory _CreateEmployee(
      {required final CreateEmployeeUuid uuid,
      required final CreateEmployeeName name,
      required final CreateEmployeeCode code,
      required final CreateEmployeePhoneNumber phoneNumber,
      required final CreateEmployeeEmail email,
      required final CreateEmployeeDepartment department}) = _$_CreateEmployee;

  @override
  CreateEmployeeUuid get uuid => throw _privateConstructorUsedError;
  @override
  CreateEmployeeName get name => throw _privateConstructorUsedError;
  @override
  CreateEmployeeCode get code => throw _privateConstructorUsedError;
  @override
  CreateEmployeePhoneNumber get phoneNumber =>
      throw _privateConstructorUsedError;
  @override
  CreateEmployeeEmail get email => throw _privateConstructorUsedError;
  @override
  CreateEmployeeDepartment get department => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateEmployeeCopyWith<_$_CreateEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}
