// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employees_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeesModel _$EmployeesModelFromJson(Map<String, dynamic> json) {
  return _EmployeesModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeesModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get idAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeesModelCopyWith<EmployeesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesModelCopyWith<$Res> {
  factory $EmployeesModelCopyWith(
          EmployeesModel value, $Res Function(EmployeesModel) then) =
      _$EmployeesModelCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String phoneNumber, String email, int idAccount});
}

/// @nodoc
class _$EmployeesModelCopyWithImpl<$Res>
    implements $EmployeesModelCopyWith<$Res> {
  _$EmployeesModelCopyWithImpl(this._value, this._then);

  final EmployeesModel _value;
  // ignore: unused_field
  final $Res Function(EmployeesModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? idAccount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      idAccount: idAccount == freezed
          ? _value.idAccount
          : idAccount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeesModelCopyWith<$Res>
    implements $EmployeesModelCopyWith<$Res> {
  factory _$$_EmployeesModelCopyWith(
          _$_EmployeesModel value, $Res Function(_$_EmployeesModel) then) =
      __$$_EmployeesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String phoneNumber, String email, int idAccount});
}

/// @nodoc
class __$$_EmployeesModelCopyWithImpl<$Res>
    extends _$EmployeesModelCopyWithImpl<$Res>
    implements _$$_EmployeesModelCopyWith<$Res> {
  __$$_EmployeesModelCopyWithImpl(
      _$_EmployeesModel _value, $Res Function(_$_EmployeesModel) _then)
      : super(_value, (v) => _then(v as _$_EmployeesModel));

  @override
  _$_EmployeesModel get _value => super._value as _$_EmployeesModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? idAccount = freezed,
  }) {
    return _then(_$_EmployeesModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      idAccount: idAccount == freezed
          ? _value.idAccount
          : idAccount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeesModel extends _EmployeesModel {
  const _$_EmployeesModel(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.idAccount})
      : super._();

  factory _$_EmployeesModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeesModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final int idAccount;

  @override
  String toString() {
    return 'EmployeesModel(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, idAccount: $idAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeesModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.idAccount, idAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(idAccount));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeesModelCopyWith<_$_EmployeesModel> get copyWith =>
      __$$_EmployeesModelCopyWithImpl<_$_EmployeesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeesModelToJson(this);
  }
}

abstract class _EmployeesModel extends EmployeesModel {
  const factory _EmployeesModel(
      {required final int id,
      required final String name,
      required final String phoneNumber,
      required final String email,
      required final int idAccount}) = _$_EmployeesModel;
  const _EmployeesModel._() : super._();

  factory _EmployeesModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeesModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  int get idAccount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeesModelCopyWith<_$_EmployeesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
