// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      policyNumber: json['policyNumber'] as String,
      machineNumber: json['machineNumber'] as String,
      currentKm: json['currentKm'] as int,
      description: json['description'] as String,
      accountId: json['accountId'] as int,
      vehicleOwner: json['vehicleOwner'] == null
          ? null
          : VehicleOwner.fromJson(json['vehicleOwner'] as Map<String, dynamic>),
      vehicleType: json['vehicleType'] == null
          ? null
          : VehicleType.fromJson(json['vehicleType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'policyNumber': instance.policyNumber,
      'machineNumber': instance.machineNumber,
      'currentKm': instance.currentKm,
      'description': instance.description,
      'accountId': instance.accountId,
      'vehicleOwner': instance.vehicleOwner,
      'vehicleType': instance.vehicleType,
    };
