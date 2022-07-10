import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const VehicleModel._();
  const factory VehicleModel({
    required int id,
    required String uuid,
    required String policyNumber,
    required String machineNumber,
    required int currentKm,
    required String description,
    required int accountId,
    required VehicleOwnerModel? vehicleOwner,
    required VehicleTypeModel? vehicleType,
  }) = _VehicleModel;

  // factory VehicleModel.createVehicleModel(Vehicle vehicle,
  //     VehicleTypeModel vehicleTypeModel, VehicleOwnerModel vehicleOwnerModel) {
  //   return VehicleModel(
  //     id: vehicle.id,
  //     uuid: vehicle.uuid,
  //     policyNumber: vehicle.policyNumber,
  //     machineNumber: vehicle.machineNumber,
  //     description: vehicle.description,
  //     accountId: vehicle.accountId,
  //     currentKm: vehicle.currentKm,
  //     vehicleOwnerModel: vehicleOwnerModel,
  //     // VehicleOwnerModel(
  //     //     id: vehicleOwnerModel.id,
  //     //     uuid: vehicleOwnerModel.uuid,
  //     //     name: vehicleOwnerModel.name,
  //     //     phoneNumber: vehicleOwnerModel.phoneNumber,
  //     //     email: vehicleOwnerModel.email,
  //     //     idNumber: vehicleOwnerModel.idNumber,
  //     //     address: vehicleOwnerModel.address,
  //     //     accountId: vehicleOwnerModel.accountId),
  //     vehicleTypeModel: vehicleTypeModel,
  //     // VehicleTypeModel(
  //     //     id: vehicleTypeModel.id,
  //     //     uuid: vehicleTypeModel.uuid,
  //     //     manufacture: vehicleTypeModel.manufacture,
  //     //     // VehicleManufactureModel(
  //     //     //     id: vehicleTypeModel.manufacture.id,
  //     //     //     uuid: vehicleTypeModel.manufacture.uuid,
  //     //     //     name: vehicleTypeModel.manufacture.name),
  //     //     model: vehicleTypeModel.model,
  //     //     year: vehicleTypeModel.year,
  //     //     color: vehicleTypeModel.color,
  //     //     description: vehicleTypeModel.description,
  //     //     accountId: vehicleTypeModel.accountId),
  //   );
  // }

  factory VehicleModel.createVehicleModel(
      Vehicle vehicle,
      VehicleTypeModel? vehicleTypeModel,
      VehicleOwnerModel? vehicleOwnerModel) {
    //if (vehicle != null) {
    return VehicleModel(
      id: vehicle.id,
      uuid: vehicle.uuid,
      policyNumber: vehicle.policyNumber,
      machineNumber: vehicle.machineNumber,
      description: vehicle.description,
      accountId: vehicle.accountId,
      currentKm: vehicle.currentKm,
      vehicleOwner: vehicleOwnerModel,
      vehicleType: vehicleTypeModel,
    );
    //}
    //return null;
  }

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}
