// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_owner_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleOwnerListState _$$_VehicleOwnerListStateFromJson(
        Map<String, dynamic> json) =>
    _$_VehicleOwnerListState(
      vehicleOwners: (json['vehicleOwners'] as List<dynamic>?)
          ?.map((e) => VehicleOwner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehicleOwnerListStateToJson(
        _$_VehicleOwnerListState instance) =>
    <String, dynamic>{
      'vehicleOwners': instance.vehicleOwners,
    };
