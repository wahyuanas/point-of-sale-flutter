// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employees_department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeesDepartmentModel _$EmployeesDepartmentModelFromJson(
    Map<String, dynamic> json) {
  return _EmployeesDepartmentModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeesDepartmentModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeesDepartmentModelCopyWith<EmployeesDepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesDepartmentModelCopyWith<$Res> {
  factory $EmployeesDepartmentModelCopyWith(EmployeesDepartmentModel value,
          $Res Function(EmployeesDepartmentModel) then) =
      _$EmployeesDepartmentModelCopyWithImpl<$Res>;
  $Res call({int id, String uuid, String code, String name, int accountId});
}

/// @nodoc
class _$EmployeesDepartmentModelCopyWithImpl<$Res>
    implements $EmployeesDepartmentModelCopyWith<$Res> {
  _$EmployeesDepartmentModelCopyWithImpl(this._value, this._then);

  final EmployeesDepartmentModel _value;
  // ignore: unused_field
  final $Res Function(EmployeesDepartmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? name = freezed,
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
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeesDepartmentModelCopyWith<$Res>
    implements $EmployeesDepartmentModelCopyWith<$Res> {
  factory _$$_EmployeesDepartmentModelCopyWith(
          _$_EmployeesDepartmentModel value,
          $Res Function(_$_EmployeesDepartmentModel) then) =
      __$$_EmployeesDepartmentModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String uuid, String code, String name, int accountId});
}

/// @nodoc
class __$$_EmployeesDepartmentModelCopyWithImpl<$Res>
    extends _$EmployeesDepartmentModelCopyWithImpl<$Res>
    implements _$$_EmployeesDepartmentModelCopyWith<$Res> {
  __$$_EmployeesDepartmentModelCopyWithImpl(_$_EmployeesDepartmentModel _value,
      $Res Function(_$_EmployeesDepartmentModel) _then)
      : super(_value, (v) => _then(v as _$_EmployeesDepartmentModel));

  @override
  _$_EmployeesDepartmentModel get _value =>
      super._value as _$_EmployeesDepartmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_EmployeesDepartmentModel(
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
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeesDepartmentModel extends _EmployeesDepartmentModel {
  const _$_EmployeesDepartmentModel(
      {required this.id,
      required this.uuid,
      required this.code,
      required this.name,
      required this.accountId})
      : super._();

  factory _$_EmployeesDepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeesDepartmentModelFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String code;
  @override
  final String name;
  @override
  final int accountId;

  @override
  String toString() {
    return 'EmployeesDepartmentModel(id: $id, uuid: $uuid, code: $code, name: $name, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeesDepartmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeesDepartmentModelCopyWith<_$_EmployeesDepartmentModel>
      get copyWith => __$$_EmployeesDepartmentModelCopyWithImpl<
          _$_EmployeesDepartmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeesDepartmentModelToJson(this);
  }
}

abstract class _EmployeesDepartmentModel extends EmployeesDepartmentModel {
  const factory _EmployeesDepartmentModel(
      {required final int id,
      required final String uuid,
      required final String code,
      required final String name,
      required final int accountId}) = _$_EmployeesDepartmentModel;
  const _EmployeesDepartmentModel._() : super._();

  factory _EmployeesDepartmentModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeesDepartmentModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeesDepartmentModelCopyWith<_$_EmployeesDepartmentModel>
      get copyWith => throw _privateConstructorUsedError;
}
