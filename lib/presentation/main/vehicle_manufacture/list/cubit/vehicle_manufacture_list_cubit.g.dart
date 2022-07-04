// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_manufacture_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleManufactureListState _$$_VehicleManufactureListStateFromJson(
        Map<String, dynamic> json) =>
    _$_VehicleManufactureListState(
      vehicleManufactures: (json['vehicleManufactures'] as List<dynamic>?)
          ?.map((e) => VehicleManufacture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehicleManufactureListStateToJson(
        _$_VehicleManufactureListState instance) =>
    <String, dynamic>{
      'vehicleManufactures': instance.vehicleManufactures,
    };
