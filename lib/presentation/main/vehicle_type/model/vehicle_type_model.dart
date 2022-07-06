import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';
import 'package:pos/presentation/main/vehicle_manufacture/model/vehicle_manufacture_model.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_type_model.freezed.dart';
part 'vehicle_type_model.g.dart';

@freezed
class VehicleTypeModel with _$VehicleTypeModel implements IEntity {
  const VehicleTypeModel._();
  const factory VehicleTypeModel({
    required int id,
    required String uuid,
    required VehicleManufactureModel? manufacture,
    required String model,
    required int year,
    required String color,
    required String description,
    required int accountId,
  }) = _VehicleTypeModel;

  factory VehicleTypeModel.createVehicleTypeModel(
      VehicleType? vehicleType, VehicleManufacture? vehicleManufacture) {
    return VehicleTypeModel(
      id: vehicleType!.id,
      uuid: vehicleType.uuid,
      manufacture: VehicleManufactureModel(
          id: vehicleManufacture!.id,
          uuid: vehicleManufacture.uuid,
          name: vehicleManufacture.name),
      model: vehicleType.model,
      description: vehicleType.description,
      accountId: vehicleType.accountId,
      year: vehicleType.year,
      color: vehicleType.color,
    );
  }

  // static VehicleTypeModel? createVehicleTypeModel(
  //     VehicleType? vehicleType, VehicleManufacture? vehicleManufacture) {
  //   if (vehicleType != null) {
  //     return VehicleTypeModel(
  //         id: vehicleType.id,
  //         uuid: vehicleType.uuid,
  //         manufacture: vehicleManufacture != null
  //             ? VehicleManufactureModel(
  //                 id: vehicleManufacture.id,
  //                 uuid: vehicleManufacture.uuid,
  //                 name: vehicleManufacture.name)
  //             : null,
  //         model: vehicleType.model,
  //         year: vehicleType.year,
  //         color: vehicleType.color,
  //         description: vehicleType.description,
  //         accountId: vehicleType.accountId);
  //   } else {
  //     return null;
  //   }
  // }

  factory VehicleTypeModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeModelFromJson(json);
}
