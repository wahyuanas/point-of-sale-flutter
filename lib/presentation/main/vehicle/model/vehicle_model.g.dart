// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      policyNumber: json['policyNumber'] as String,
      machineNumber: json['machineNumber'] as String,
      currentKm: json['currentKm'] as int,
      description: json['description'] as String,
      accountId: json['accountId'] as int,
      vehicleOwnerModel: json['vehicleOwnerModel'] == null
          ? null
          : VehicleOwnerModel.fromJson(
              json['vehicleOwnerModel'] as Map<String, dynamic>),
      vehicleTypeModel: json['vehicleTypeModel'] == null
          ? null
          : VehicleTypeModel.fromJson(
              json['vehicleTypeModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'policyNumber': instance.policyNumber,
      'machineNumber': instance.machineNumber,
      'currentKm': instance.currentKm,
      'description': instance.description,
      'accountId': instance.accountId,
      'vehicleOwnerModel': instance.vehicleOwnerModel,
      'vehicleTypeModel': instance.vehicleTypeModel,
    };
