import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "vehicle_object_value.freezed.dart";

@freezed
class CreateVehicle with _$CreateVehicle {
  const factory CreateVehicle({
    required CreateVehicleUuid uuid,
    required CreateVehiclePolicyNumber policyNumber,
    required CreateVehicleMachineNumber machineNumber,
    required CreateVehicleDescription description,
    required CreateVehicleCurrentKm currentKm,
    required CreateVehicleOwner vehicleOwner,
    required CreateVehicleType vehicleType,
  }) = _CreateVehicle;

  factory CreateVehicle.empty() => CreateVehicle(
      uuid: CreateVehicleUuid(''),
      policyNumber: CreateVehiclePolicyNumber(''),
      machineNumber: CreateVehicleMachineNumber(''),
      currentKm: CreateVehicleCurrentKm(''),
      description: CreateVehicleDescription(''),
      vehicleOwner: CreateVehicleOwner(null),
      vehicleType: CreateVehicleType(null));
}

extension CreateVehicleX on CreateVehicle {
  Option<ObjectValueFailure> get failureOption {
    return policyNumber.failureOrUnit
        .andThen(machineNumber.failureOrUnit)
        .andThen(currentKm.failureOrUnit)
        .andThen(description.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
