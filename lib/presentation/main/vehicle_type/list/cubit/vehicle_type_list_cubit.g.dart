// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_type_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleTypeListState _$$_VehicleTypeListStateFromJson(
        Map<String, dynamic> json) =>
    _$_VehicleTypeListState(
      vehicleTypes: (json['vehicleTypes'] as List<dynamic>?)
          ?.map((e) => VehicleType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehicleTypeListStateToJson(
        _$_VehicleTypeListState instance) =>
    <String, dynamic>{
      'vehicleTypes': instance.vehicleTypes,
    };
