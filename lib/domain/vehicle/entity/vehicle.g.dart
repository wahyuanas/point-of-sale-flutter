// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      id: json['id'] as int,
      policyNumber: json['policyNumber'] as String,
      machineNumber: json['machineNumber'] as String,
      currentKm: json['currentKm'] as int,
      description: json['description'] as String,
      idAccount: json['idAccount'] as int,
      idVehicleOwner: json['idVehicleOwner'] as int,
      idType: json['idType'] as int?,
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'policyNumber': instance.policyNumber,
      'machineNumber': instance.machineNumber,
      'currentKm': instance.currentKm,
      'description': instance.description,
      'idAccount': instance.idAccount,
      'idVehicleOwner': instance.idVehicleOwner,
      'idType': instance.idType,
    };
