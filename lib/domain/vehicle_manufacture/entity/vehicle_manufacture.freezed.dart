// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_manufacture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleManufacture _$VehicleManufactureFromJson(Map<String, dynamic> json) {
  return _VehicleManufacture.fromJson(json);
}

/// @nodoc
mixin _$VehicleManufacture {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleManufactureCopyWith<VehicleManufacture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleManufactureCopyWith<$Res> {
  factory $VehicleManufactureCopyWith(
          VehicleManufacture value, $Res Function(VehicleManufacture) then) =
      _$VehicleManufactureCopyWithImpl<$Res>;
  $Res call({int id, String uuid, String name, int accountId});
}

/// @nodoc
class _$VehicleManufactureCopyWithImpl<$Res>
    implements $VehicleManufactureCopyWith<$Res> {
  _$VehicleManufactureCopyWithImpl(this._value, this._then);

  final VehicleManufacture _value;
  // ignore: unused_field
  final $Res Function(VehicleManufacture) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
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
abstract class _$$_VehicleManufactureCopyWith<$Res>
    implements $VehicleManufactureCopyWith<$Res> {
  factory _$$_VehicleManufactureCopyWith(_$_VehicleManufacture value,
          $Res Function(_$_VehicleManufacture) then) =
      __$$_VehicleManufactureCopyWithImpl<$Res>;
  @override
  $Res call({int id, String uuid, String name, int accountId});
}

/// @nodoc
class __$$_VehicleManufactureCopyWithImpl<$Res>
    extends _$VehicleManufactureCopyWithImpl<$Res>
    implements _$$_VehicleManufactureCopyWith<$Res> {
  __$$_VehicleManufactureCopyWithImpl(
      _$_VehicleManufacture _value, $Res Function(_$_VehicleManufacture) _then)
      : super(_value, (v) => _then(v as _$_VehicleManufacture));

  @override
  _$_VehicleManufacture get _value => super._value as _$_VehicleManufacture;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_VehicleManufacture(
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
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleManufacture extends _VehicleManufacture {
  const _$_VehicleManufacture(
      {required this.id,
      required this.uuid,
      required this.name,
      required this.accountId})
      : super._();

  factory _$_VehicleManufacture.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleManufactureFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final int accountId;

  @override
  String toString() {
    return 'VehicleManufacture(id: $id, uuid: $uuid, name: $name, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleManufacture &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleManufactureCopyWith<_$_VehicleManufacture> get copyWith =>
      __$$_VehicleManufactureCopyWithImpl<_$_VehicleManufacture>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleManufactureToJson(this);
  }
}

abstract class _VehicleManufacture extends VehicleManufacture {
  const factory _VehicleManufacture(
      {required final int id,
      required final String uuid,
      required final String name,
      required final int accountId}) = _$_VehicleManufacture;
  const _VehicleManufacture._() : super._();

  factory _VehicleManufacture.fromJson(Map<String, dynamic> json) =
      _$_VehicleManufacture.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleManufactureCopyWith<_$_VehicleManufacture> get copyWith =>
      throw _privateConstructorUsedError;
}
