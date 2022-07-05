// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_department_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateEmployeeDepartment {
  CreateEmployeeDepartmentUuid get uuid => throw _privateConstructorUsedError;
  CreateEmployeeDepartmentName get name => throw _privateConstructorUsedError;
  CreateEmployeeDepartmentCode get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEmployeeDepartmentCopyWith<CreateEmployeeDepartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeDepartmentCopyWith<$Res> {
  factory $CreateEmployeeDepartmentCopyWith(CreateEmployeeDepartment value,
          $Res Function(CreateEmployeeDepartment) then) =
      _$CreateEmployeeDepartmentCopyWithImpl<$Res>;
  $Res call(
      {CreateEmployeeDepartmentUuid uuid,
      CreateEmployeeDepartmentName name,
      CreateEmployeeDepartmentCode code});
}

/// @nodoc
class _$CreateEmployeeDepartmentCopyWithImpl<$Res>
    implements $CreateEmployeeDepartmentCopyWith<$Res> {
  _$CreateEmployeeDepartmentCopyWithImpl(this._value, this._then);

  final CreateEmployeeDepartment _value;
  // ignore: unused_field
  final $Res Function(CreateEmployeeDepartment) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartmentUuid,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartmentName,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartmentCode,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateEmployeeDepartmentCopyWith<$Res>
    implements $CreateEmployeeDepartmentCopyWith<$Res> {
  factory _$$_CreateEmployeeDepartmentCopyWith(
          _$_CreateEmployeeDepartment value,
          $Res Function(_$_CreateEmployeeDepartment) then) =
      __$$_CreateEmployeeDepartmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreateEmployeeDepartmentUuid uuid,
      CreateEmployeeDepartmentName name,
      CreateEmployeeDepartmentCode code});
}

/// @nodoc
class __$$_CreateEmployeeDepartmentCopyWithImpl<$Res>
    extends _$CreateEmployeeDepartmentCopyWithImpl<$Res>
    implements _$$_CreateEmployeeDepartmentCopyWith<$Res> {
  __$$_CreateEmployeeDepartmentCopyWithImpl(_$_CreateEmployeeDepartment _value,
      $Res Function(_$_CreateEmployeeDepartment) _then)
      : super(_value, (v) => _then(v as _$_CreateEmployeeDepartment));

  @override
  _$_CreateEmployeeDepartment get _value =>
      super._value as _$_CreateEmployeeDepartment;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_CreateEmployeeDepartment(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartmentUuid,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartmentName,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CreateEmployeeDepartmentCode,
    ));
  }
}

/// @nodoc

class _$_CreateEmployeeDepartment implements _CreateEmployeeDepartment {
  const _$_CreateEmployeeDepartment(
      {required this.uuid, required this.name, required this.code});

  @override
  final CreateEmployeeDepartmentUuid uuid;
  @override
  final CreateEmployeeDepartmentName name;
  @override
  final CreateEmployeeDepartmentCode code;

  @override
  String toString() {
    return 'CreateEmployeeDepartment(uuid: $uuid, name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateEmployeeDepartment &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_CreateEmployeeDepartmentCopyWith<_$_CreateEmployeeDepartment>
      get copyWith => __$$_CreateEmployeeDepartmentCopyWithImpl<
          _$_CreateEmployeeDepartment>(this, _$identity);
}

abstract class _CreateEmployeeDepartment implements CreateEmployeeDepartment {
  const factory _CreateEmployeeDepartment(
          {required final CreateEmployeeDepartmentUuid uuid,
          required final CreateEmployeeDepartmentName name,
          required final CreateEmployeeDepartmentCode code}) =
      _$_CreateEmployeeDepartment;

  @override
  CreateEmployeeDepartmentUuid get uuid => throw _privateConstructorUsedError;
  @override
  CreateEmployeeDepartmentName get name => throw _privateConstructorUsedError;
  @override
  CreateEmployeeDepartmentCode get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateEmployeeDepartmentCopyWith<_$_CreateEmployeeDepartment>
      get copyWith => throw _privateConstructorUsedError;
}
