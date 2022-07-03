// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_manufacture_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateVehicleManufacture {
  CreateVehicleManufactureUuid get uuid => throw _privateConstructorUsedError;
  CreateVehicleManufactureName get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateVehicleManufactureCopyWith<CreateVehicleManufacture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVehicleManufactureCopyWith<$Res> {
  factory $CreateVehicleManufactureCopyWith(CreateVehicleManufacture value,
          $Res Function(CreateVehicleManufacture) then) =
      _$CreateVehicleManufactureCopyWithImpl<$Res>;
  $Res call(
      {CreateVehicleManufactureUuid uuid, CreateVehicleManufactureName name});
}

/// @nodoc
class _$CreateVehicleManufactureCopyWithImpl<$Res>
    implements $CreateVehicleManufactureCopyWith<$Res> {
  _$CreateVehicleManufactureCopyWithImpl(this._value, this._then);

  final CreateVehicleManufacture _value;
  // ignore: unused_field
  final $Res Function(CreateVehicleManufacture) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as CreateVehicleManufactureUuid,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CreateVehicleManufactureName,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateVehicleManufactureCopyWith<$Res>
    implements $CreateVehicleManufactureCopyWith<$Res> {
  factory _$$_CreateVehicleManufactureCopyWith(
          _$_CreateVehicleManufacture value,
          $Res Function(_$_CreateVehicleManufacture) then) =
      __$$_CreateVehicleManufactureCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreateVehicleManufactureUuid uuid, CreateVehicleManufactureName name});
}

/// @nodoc
class __$$_CreateVehicleManufactureCopyWithImpl<$Res>
    extends _$CreateVehicleManufactureCopyWithImpl<$Res>
    implements _$$_CreateVehicleManufactureCopyWith<$Res> {
  __$$_CreateVehicleManufactureCopyWithImpl(_$_CreateVehicleManufacture _value,
      $Res Function(_$_CreateVehicleManufacture) _then)
      : super(_value, (v) => _then(v as _$_CreateVehicleManufacture));

  @override
  _$_CreateVehicleManufacture get _value =>
      super._value as _$_CreateVehicleManufacture;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CreateVehicleManufacture(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as CreateVehicleManufactureUuid,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CreateVehicleManufactureName,
    ));
  }
}

/// @nodoc

class _$_CreateVehicleManufacture implements _CreateVehicleManufacture {
  const _$_CreateVehicleManufacture({required this.uuid, required this.name});

  @override
  final CreateVehicleManufactureUuid uuid;
  @override
  final CreateVehicleManufactureName name;

  @override
  String toString() {
    return 'CreateVehicleManufacture(uuid: $uuid, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateVehicleManufacture &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CreateVehicleManufactureCopyWith<_$_CreateVehicleManufacture>
      get copyWith => __$$_CreateVehicleManufactureCopyWithImpl<
          _$_CreateVehicleManufacture>(this, _$identity);
}

abstract class _CreateVehicleManufacture implements CreateVehicleManufacture {
  const factory _CreateVehicleManufacture(
          {required final CreateVehicleManufactureUuid uuid,
          required final CreateVehicleManufactureName name}) =
      _$_CreateVehicleManufacture;

  @override
  CreateVehicleManufactureUuid get uuid => throw _privateConstructorUsedError;
  @override
  CreateVehicleManufactureName get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateVehicleManufactureCopyWith<_$_CreateVehicleManufacture>
      get copyWith => throw _privateConstructorUsedError;
}
