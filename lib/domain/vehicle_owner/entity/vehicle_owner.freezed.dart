// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleOwner _$VehicleOwnerFromJson(Map<String, dynamic> json) {
  return _VehicleOwner.fromJson(json);
}

/// @nodoc
mixin _$VehicleOwner {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleOwnerCopyWith<VehicleOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleOwnerCopyWith<$Res> {
  factory $VehicleOwnerCopyWith(
          VehicleOwner value, $Res Function(VehicleOwner) then) =
      _$VehicleOwnerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String name,
      String phoneNumber,
      String email,
      String idNumber,
      String address,
      int accountId});
}

/// @nodoc
class _$VehicleOwnerCopyWithImpl<$Res> implements $VehicleOwnerCopyWith<$Res> {
  _$VehicleOwnerCopyWithImpl(this._value, this._then);

  final VehicleOwner _value;
  // ignore: unused_field
  final $Res Function(VehicleOwner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? idNumber = freezed,
    Object? address = freezed,
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
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: idNumber == freezed
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleOwnerCopyWith<$Res>
    implements $VehicleOwnerCopyWith<$Res> {
  factory _$$_VehicleOwnerCopyWith(
          _$_VehicleOwner value, $Res Function(_$_VehicleOwner) then) =
      __$$_VehicleOwnerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String name,
      String phoneNumber,
      String email,
      String idNumber,
      String address,
      int accountId});
}

/// @nodoc
class __$$_VehicleOwnerCopyWithImpl<$Res>
    extends _$VehicleOwnerCopyWithImpl<$Res>
    implements _$$_VehicleOwnerCopyWith<$Res> {
  __$$_VehicleOwnerCopyWithImpl(
      _$_VehicleOwner _value, $Res Function(_$_VehicleOwner) _then)
      : super(_value, (v) => _then(v as _$_VehicleOwner));

  @override
  _$_VehicleOwner get _value => super._value as _$_VehicleOwner;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? idNumber = freezed,
    Object? address = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_VehicleOwner(
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
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: idNumber == freezed
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
class _$_VehicleOwner extends _VehicleOwner {
  const _$_VehicleOwner(
      {required this.id,
      required this.uuid,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.idNumber,
      required this.address,
      required this.accountId})
      : super._();

  factory _$_VehicleOwner.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleOwnerFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String idNumber;
  @override
  final String address;
  @override
  final int accountId;

  @override
  String toString() {
    return 'VehicleOwner(id: $id, uuid: $uuid, name: $name, phoneNumber: $phoneNumber, email: $email, idNumber: $idNumber, address: $address, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleOwner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.idNumber, idNumber) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(idNumber),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleOwnerCopyWith<_$_VehicleOwner> get copyWith =>
      __$$_VehicleOwnerCopyWithImpl<_$_VehicleOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleOwnerToJson(this);
  }
}

abstract class _VehicleOwner extends VehicleOwner {
  const factory _VehicleOwner(
      {required final int id,
      required final String uuid,
      required final String name,
      required final String phoneNumber,
      required final String email,
      required final String idNumber,
      required final String address,
      required final int accountId}) = _$_VehicleOwner;
  const _VehicleOwner._() : super._();

  factory _VehicleOwner.fromJson(Map<String, dynamic> json) =
      _$_VehicleOwner.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get idNumber => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleOwnerCopyWith<_$_VehicleOwner> get copyWith =>
      throw _privateConstructorUsedError;
}
