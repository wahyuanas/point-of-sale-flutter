import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/vehicle_object_value.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle implements IEntity {
  const Vehicle._();
  const factory Vehicle({
    required int id,
    required String uuid,
    required String policyNumber,
    required String machineNumber,
    required int currentKm,
    required String description,
    required int accountId,
    required int vehicleOwner,
    required int vehicleType,
  }) = _Vehicle;

  factory Vehicle.createVehicle(int id, CreateVehicle createVehicle) {
    return Vehicle(
      id: id,
      uuid: const Uuid().v4(),
      policyNumber: createVehicle.policyNumber.getOrCrash(),
      machineNumber: createVehicle.machineNumber.getOrCrash(),
      description: createVehicle.description.getOrCrash(),
      accountId: 1,
      currentKm: createVehicle.currentKm.getOrCrash(),
      vehicleOwner: createVehicle.vehicleOwner.getOrCrash()!.id,
      vehicleType: createVehicle.vehicleType.getOrCrash()!.id,
    );
  }

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
