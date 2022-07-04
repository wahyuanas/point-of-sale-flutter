import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/vehicle_type_object_value.dart';

part 'vehicle_type.freezed.dart';
part 'vehicle_type.g.dart';

@freezed
class VehicleType with _$VehicleType implements IEntity {
  const VehicleType._();
  const factory VehicleType({
    required int id,
    required String uuid,
    required int manufacture,
    required String model,
    required int year,
    required String color,
    required String description,
    required int accountId,
  }) = _VehicleType;

  factory VehicleType.createVehicleType(
      int id, CreateVehicleType createVehicleType) {
    return VehicleType(
      id: id,
      uuid: const Uuid().v4(),
      manufacture: createVehicleType.manufacture.getOrCrash()!.id,
      model: createVehicleType.model.getOrCrash(),
      description: createVehicleType.description.getOrCrash(),
      accountId: 1,
      year: createVehicleType.year.getOrCrash(),
      color: createVehicleType.color.getOrCrash(),
    );
  }

  factory VehicleType.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeFromJson(json);
}
