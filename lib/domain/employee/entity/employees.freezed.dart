// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employees _$EmployeesFromJson(Map<String, dynamic> json) {
  return _Employees.fromJson(json);
}

/// @nodoc
mixin _$Employees {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  int get departmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeesCopyWith<Employees> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesCopyWith<$Res> {
  factory $EmployeesCopyWith(Employees value, $Res Function(Employees) then) =
      _$EmployeesCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String code,
      String name,
      String phoneNumber,
      String email,
      int accountId,
      int departmentId});
}

/// @nodoc
class _$EmployeesCopyWithImpl<$Res> implements $EmployeesCopyWith<$Res> {
  _$EmployeesCopyWithImpl(this._value, this._then);

  final Employees _value;
  // ignore: unused_field
  final $Res Function(Employees) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? accountId = freezed,
    Object? departmentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: departmentId == freezed
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeesCopyWith<$Res> implements $EmployeesCopyWith<$Res> {
  factory _$$_EmployeesCopyWith(
          _$_Employees value, $Res Function(_$_Employees) then) =
      __$$_EmployeesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String code,
      String name,
      String phoneNumber,
      String email,
      int accountId,
      int departmentId});
}

/// @nodoc
class __$$_EmployeesCopyWithImpl<$Res> extends _$EmployeesCopyWithImpl<$Res>
    implements _$$_EmployeesCopyWith<$Res> {
  __$$_EmployeesCopyWithImpl(
      _$_Employees _value, $Res Function(_$_Employees) _then)
      : super(_value, (v) => _then(v as _$_Employees));

  @override
  _$_Employees get _value => super._value as _$_Employees;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? accountId = freezed,
    Object? departmentId = freezed,
  }) {
    return _then(_$_Employees(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: departmentId == freezed
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Employees extends _Employees {
  const _$_Employees(
      {required this.id,
      required this.uuid,
      required this.code,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.accountId,
      required this.departmentId})
      : super._();

  factory _$_Employees.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeesFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String code;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final int accountId;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'Employees(id: $id, uuid: $uuid, code: $code, name: $name, phoneNumber: $phoneNumber, email: $email, accountId: $accountId, departmentId: $departmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employees &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.departmentId, departmentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(departmentId));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeesCopyWith<_$_Employees> get copyWith =>
      __$$_EmployeesCopyWithImpl<_$_Employees>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeesToJson(this);
  }
}

abstract class _Employees extends Employees {
  const factory _Employees(
      {required final int id,
      required final String uuid,
      required final String code,
      required final String name,
      required final String phoneNumber,
      required final String email,
      required final int accountId,
      required final int departmentId}) = _$_Employees;
  const _Employees._() : super._();

  factory _Employees.fromJson(Map<String, dynamic> json) =
      _$_Employees.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  int get departmentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeesCopyWith<_$_Employees> get copyWith =>
      throw _privateConstructorUsedError;
}
