// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleListState _$$_VehicleListStateFromJson(Map<String, dynamic> json) =>
    _$_VehicleListState(
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehicleListStateToJson(_$_VehicleListState instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles,
    };
