// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get policyNumber => throw _privateConstructorUsedError;
  String get machineNumber => throw _privateConstructorUsedError;
  int get currentKm => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  VehicleOwner? get vehicleOwner => throw _privateConstructorUsedError;
  VehicleType? get vehicleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String policyNumber,
      String machineNumber,
      int currentKm,
      String description,
      int accountId,
      VehicleOwner? vehicleOwner,
      VehicleType? vehicleType});

  $VehicleOwnerCopyWith<$Res>? get vehicleOwner;
  $VehicleTypeCopyWith<$Res>? get vehicleType;
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  final Vehicle _value;
  // ignore: unused_field
  final $Res Function(Vehicle) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? policyNumber = freezed,
    Object? machineNumber = freezed,
    Object? currentKm = freezed,
    Object? description = freezed,
    Object? accountId = freezed,
    Object? vehicleOwner = freezed,
    Object? vehicleType = freezed,
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
      policyNumber: policyNumber == freezed
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      machineNumber: machineNumber == freezed
          ? _value.machineNumber
          : machineNumber // ignore: cast_nullable_to_non_nullable
              as String,
      currentKm: currentKm == freezed
          ? _value.currentKm
          : currentKm // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleOwner: vehicleOwner == freezed
          ? _value.vehicleOwner
          : vehicleOwner // ignore: cast_nullable_to_non_nullable
              as VehicleOwner?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ));
  }

  @override
  $VehicleOwnerCopyWith<$Res>? get vehicleOwner {
    if (_value.vehicleOwner == null) {
      return null;
    }

    return $VehicleOwnerCopyWith<$Res>(_value.vehicleOwner!, (value) {
      return _then(_value.copyWith(vehicleOwner: value));
    });
  }

  @override
  $VehicleTypeCopyWith<$Res>? get vehicleType {
    if (_value.vehicleType == null) {
      return null;
    }

    return $VehicleTypeCopyWith<$Res>(_value.vehicleType!, (value) {
      return _then(_value.copyWith(vehicleType: value));
    });
  }
}

/// @nodoc
abstract class _$$_VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$_VehicleCopyWith(
          _$_Vehicle value, $Res Function(_$_Vehicle) then) =
      __$$_VehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String policyNumber,
      String machineNumber,
      int currentKm,
      String description,
      int accountId,
      VehicleOwner? vehicleOwner,
      VehicleType? vehicleType});

  @override
  $VehicleOwnerCopyWith<$Res>? get vehicleOwner;
  @override
  $VehicleTypeCopyWith<$Res>? get vehicleType;
}

/// @nodoc
class __$$_VehicleCopyWithImpl<$Res> extends _$VehicleCopyWithImpl<$Res>
    implements _$$_VehicleCopyWith<$Res> {
  __$$_VehicleCopyWithImpl(_$_Vehicle _value, $Res Function(_$_Vehicle) _then)
      : super(_value, (v) => _then(v as _$_Vehicle));

  @override
  _$_Vehicle get _value => super._value as _$_Vehicle;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? policyNumber = freezed,
    Object? machineNumber = freezed,
    Object? currentKm = freezed,
    Object? description = freezed,
    Object? accountId = freezed,
    Object? vehicleOwner = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_$_Vehicle(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      policyNumber: policyNumber == freezed
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      machineNumber: machineNumber == freezed
          ? _value.machineNumber
          : machineNumber // ignore: cast_nullable_to_non_nullable
              as String,
      currentKm: currentKm == freezed
          ? _value.currentKm
          : currentKm // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleOwner: vehicleOwner == freezed
          ? _value.vehicleOwner
          : vehicleOwner // ignore: cast_nullable_to_non_nullable
              as VehicleOwner?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle extends _Vehicle {
  const _$_Vehicle(
      {required this.id,
      required this.uuid,
      required this.policyNumber,
      required this.machineNumber,
      required this.currentKm,
      required this.description,
      required this.accountId,
      required this.vehicleOwner,
      required this.vehicleType})
      : super._();

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String policyNumber;
  @override
  final String machineNumber;
  @override
  final int currentKm;
  @override
  final String description;
  @override
  final int accountId;
  @override
  final VehicleOwner? vehicleOwner;
  @override
  final VehicleType? vehicleType;

  @override
  String toString() {
    return 'Vehicle(id: $id, uuid: $uuid, policyNumber: $policyNumber, machineNumber: $machineNumber, currentKm: $currentKm, description: $description, accountId: $accountId, vehicleOwner: $vehicleOwner, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vehicle &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.policyNumber, policyNumber) &&
            const DeepCollectionEquality()
                .equals(other.machineNumber, machineNumber) &&
            const DeepCollectionEquality().equals(other.currentKm, currentKm) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.vehicleOwner, vehicleOwner) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(policyNumber),
      const DeepCollectionEquality().hash(machineNumber),
      const DeepCollectionEquality().hash(currentKm),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(vehicleOwner),
      const DeepCollectionEquality().hash(vehicleType));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      __$$_VehicleCopyWithImpl<_$_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleToJson(this);
  }
}

abstract class _Vehicle extends Vehicle {
  const factory _Vehicle(
      {required final int id,
      required final String uuid,
      required final String policyNumber,
      required final String machineNumber,
      required final int currentKm,
      required final String description,
      required final int accountId,
      required final VehicleOwner? vehicleOwner,
      required final VehicleType? vehicleType}) = _$_Vehicle;
  const _Vehicle._() : super._();

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get policyNumber => throw _privateConstructorUsedError;
  @override
  String get machineNumber => throw _privateConstructorUsedError;
  @override
  int get currentKm => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  VehicleOwner? get vehicleOwner => throw _privateConstructorUsedError;
  @override
  VehicleType? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}
