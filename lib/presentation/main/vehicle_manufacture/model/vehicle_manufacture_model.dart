import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_manufacture_model.freezed.dart';
part 'vehicle_manufacture_model.g.dart';

@freezed
class VehicleManufactureModel with _$VehicleManufactureModel {
  const VehicleManufactureModel._();
  const factory VehicleManufactureModel(
      {required int id,
      required String uuid,
      required String name,
      required int accountId}) = _VehicleManufactureModel;

  factory VehicleManufactureModel.createVehicleManufactureModel(
      VehicleManufacture? vehicleManufacture) {
    return VehicleManufactureModel(
        id: vehicleManufacture!.id,
        uuid: vehicleManufacture.uuid,
        name: vehicleManufacture.name,
        accountId: vehicleManufacture.id);
  }

  factory VehicleManufactureModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleManufactureModelFromJson(json);
}
