// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employees_department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeesDepartment _$EmployeesDepartmentFromJson(Map<String, dynamic> json) {
  return _EmployeesDepartment.fromJson(json);
}

/// @nodoc
mixin _$EmployeesDepartment {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeesDepartmentCopyWith<EmployeesDepartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesDepartmentCopyWith<$Res> {
  factory $EmployeesDepartmentCopyWith(
          EmployeesDepartment value, $Res Function(EmployeesDepartment) then) =
      _$EmployeesDepartmentCopyWithImpl<$Res>;
  $Res call({int id, String uuid, String name, String code, int accountId});
}

/// @nodoc
class _$EmployeesDepartmentCopyWithImpl<$Res>
    implements $EmployeesDepartmentCopyWith<$Res> {
  _$EmployeesDepartmentCopyWithImpl(this._value, this._then);

  final EmployeesDepartment _value;
  // ignore: unused_field
  final $Res Function(EmployeesDepartment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? accountId = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeesDepartmentCopyWith<$Res>
    implements $EmployeesDepartmentCopyWith<$Res> {
  factory _$$_EmployeesDepartmentCopyWith(_$_EmployeesDepartment value,
          $Res Function(_$_EmployeesDepartment) then) =
      __$$_EmployeesDepartmentCopyWithImpl<$Res>;
  @override
  $Res call({int id, String uuid, String name, String code, int accountId});
}

/// @nodoc
class __$$_EmployeesDepartmentCopyWithImpl<$Res>
    extends _$EmployeesDepartmentCopyWithImpl<$Res>
    implements _$$_EmployeesDepartmentCopyWith<$Res> {
  __$$_EmployeesDepartmentCopyWithImpl(_$_EmployeesDepartment _value,
      $Res Function(_$_EmployeesDepartment) _then)
      : super(_value, (v) => _then(v as _$_EmployeesDepartment));

  @override
  _$_EmployeesDepartment get _value => super._value as _$_EmployeesDepartment;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_EmployeesDepartment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeesDepartment extends _EmployeesDepartment {
  const _$_EmployeesDepartment(
      {required this.id,
      required this.uuid,
      required this.name,
      required this.code,
      required this.accountId})
      : super._();

  factory _$_EmployeesDepartment.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeesDepartmentFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String code;
  @override
  final int accountId;

  @override
  String toString() {
    return 'EmployeesDepartment(id: $id, uuid: $uuid, name: $name, code: $code, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeesDepartment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeesDepartmentCopyWith<_$_EmployeesDepartment> get copyWith =>
      __$$_EmployeesDepartmentCopyWithImpl<_$_EmployeesDepartment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeesDepartmentToJson(this);
  }
}

abstract class _EmployeesDepartment extends EmployeesDepartment {
  const factory _EmployeesDepartment(
      {required final int id,
      required final String uuid,
      required final String name,
      required final String code,
      required final int accountId}) = _$_EmployeesDepartment;
  const _EmployeesDepartment._() : super._();

  factory _EmployeesDepartment.fromJson(Map<String, dynamic> json) =
      _$_EmployeesDepartment.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeesDepartmentCopyWith<_$_EmployeesDepartment> get copyWith =>
      throw _privateConstructorUsedError;
}
