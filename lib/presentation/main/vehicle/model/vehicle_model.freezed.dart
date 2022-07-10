// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get policyNumber => throw _privateConstructorUsedError;
  String get machineNumber => throw _privateConstructorUsedError;
  int get currentKm => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  VehicleOwnerModel? get vehicleOwner => throw _privateConstructorUsedError;
  VehicleTypeModel? get vehicleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String policyNumber,
      String machineNumber,
      int currentKm,
      String description,
      int accountId,
      VehicleOwnerModel? vehicleOwner,
      VehicleTypeModel? vehicleType});

  $VehicleOwnerModelCopyWith<$Res>? get vehicleOwner;
  $VehicleTypeModelCopyWith<$Res>? get vehicleType;
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res> implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  final VehicleModel _value;
  // ignore: unused_field
  final $Res Function(VehicleModel) _then;

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
              as VehicleOwnerModel?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypeModel?,
    ));
  }

  @override
  $VehicleOwnerModelCopyWith<$Res>? get vehicleOwner {
    if (_value.vehicleOwner == null) {
      return null;
    }

    return $VehicleOwnerModelCopyWith<$Res>(_value.vehicleOwner!, (value) {
      return _then(_value.copyWith(vehicleOwner: value));
    });
  }

  @override
  $VehicleTypeModelCopyWith<$Res>? get vehicleType {
    if (_value.vehicleType == null) {
      return null;
    }

    return $VehicleTypeModelCopyWith<$Res>(_value.vehicleType!, (value) {
      return _then(_value.copyWith(vehicleType: value));
    });
  }
}

/// @nodoc
abstract class _$$_VehicleModelCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$$_VehicleModelCopyWith(
          _$_VehicleModel value, $Res Function(_$_VehicleModel) then) =
      __$$_VehicleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String policyNumber,
      String machineNumber,
      int currentKm,
      String description,
      int accountId,
      VehicleOwnerModel? vehicleOwner,
      VehicleTypeModel? vehicleType});

  @override
  $VehicleOwnerModelCopyWith<$Res>? get vehicleOwner;
  @override
  $VehicleTypeModelCopyWith<$Res>? get vehicleType;
}

/// @nodoc
class __$$_VehicleModelCopyWithImpl<$Res>
    extends _$VehicleModelCopyWithImpl<$Res>
    implements _$$_VehicleModelCopyWith<$Res> {
  __$$_VehicleModelCopyWithImpl(
      _$_VehicleModel _value, $Res Function(_$_VehicleModel) _then)
      : super(_value, (v) => _then(v as _$_VehicleModel));

  @override
  _$_VehicleModel get _value => super._value as _$_VehicleModel;

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
    return _then(_$_VehicleModel(
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
              as VehicleOwnerModel?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleModel extends _VehicleModel {
  const _$_VehicleModel(
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

  factory _$_VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleModelFromJson(json);

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
  final VehicleOwnerModel? vehicleOwner;
  @override
  final VehicleTypeModel? vehicleType;

  @override
  String toString() {
    return 'VehicleModel(id: $id, uuid: $uuid, policyNumber: $policyNumber, machineNumber: $machineNumber, currentKm: $currentKm, description: $description, accountId: $accountId, vehicleOwner: $vehicleOwner, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleModel &&
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
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      __$$_VehicleModelCopyWithImpl<_$_VehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleModelToJson(this);
  }
}

abstract class _VehicleModel extends VehicleModel {
  const factory _VehicleModel(
      {required final int id,
      required final String uuid,
      required final String policyNumber,
      required final String machineNumber,
      required final int currentKm,
      required final String description,
      required final int accountId,
      required final VehicleOwnerModel? vehicleOwner,
      required final VehicleTypeModel? vehicleType}) = _$_VehicleModel;
  const _VehicleModel._() : super._();

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleModel.fromJson;

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
  VehicleOwnerModel? get vehicleOwner => throw _privateConstructorUsedError;
  @override
  VehicleTypeModel? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
