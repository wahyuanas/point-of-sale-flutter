// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleState _$$_VehicleStateFromJson(Map<String, dynamic> json) =>
    _$_VehicleState(
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehicleStateToJson(_$_VehicleState instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles,
    };
