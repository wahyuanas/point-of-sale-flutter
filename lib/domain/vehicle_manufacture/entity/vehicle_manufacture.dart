import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/vehicle_manufacture_object_value.dart';

part 'vehicle_manufacture.freezed.dart';
part 'vehicle_manufacture.g.dart';

@freezed
class VehicleManufacture with _$VehicleManufacture implements IEntity {
  const VehicleManufacture._();
  const factory VehicleManufacture({
    required int id,
    required String uuid,
    required String name,
    required int accountId,
  }) = _VehicleManufacture;

  factory VehicleManufacture.createVehicleManufacture(
      int id, CreateVehicleManufacture createVehicleManufacture) {
    return VehicleManufacture(
      id: id,
      uuid: const Uuid().v4(),
      name: createVehicleManufacture.name.getOrCrash(),
      accountId: 1,
    );
  }

  factory VehicleManufacture.fromJson(Map<String, dynamic> json) =>
      _$VehicleManufactureFromJson(json);
}
