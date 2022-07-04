import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_type_model.freezed.dart';
part 'vehicle_type_model.g.dart';

@freezed
class VehicleTypeModel with _$VehicleTypeModel implements IEntity {
  const VehicleTypeModel._();
  const factory VehicleTypeModel({
    required int id,
    required String uuid,
    required VehicleManufacture manufacture,
    required String model,
    required int year,
    required String color,
    required String description,
    required int accountId,
  }) = _VehicleTypeModel;

  factory VehicleTypeModel.createVehicleTypeModel(VehicleType? vehicleType) {
    return VehicleTypeModel(
      id: vehicleType!.id,
      uuid: vehicleType.uuid,
      manufacture: vehicleType.manufacture,
      model: vehicleType.model,
      description: vehicleType.description,
      accountId: vehicleType.accountId,
      year: vehicleType.year,
      color: vehicleType.color,
    );
  }

  factory VehicleTypeModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeModelFromJson(json);
}
