import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/vehicle_owner/entity/vehicle_owner.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_owner_model.freezed.dart';
part 'vehicle_owner_model.g.dart';

@freezed
class VehicleOwnerModel with _$VehicleOwnerModel implements IEntity {
  const VehicleOwnerModel._();
  const factory VehicleOwnerModel({
    required int id,
    required String uuid,
    required String name,
    required String phoneNumber,
    required String email,
    required String idNumber,
    required String address,
    required int accountId,
  }) = _VehicleOwnerModel;

  factory VehicleOwnerModel.createVehicleOwnerModel(
      VehicleOwner? vehicleOwner) {
    return VehicleOwnerModel(
      id: vehicleOwner!.id,
      uuid: vehicleOwner.uuid,
      name: vehicleOwner.name,
      phoneNumber: vehicleOwner.phoneNumber,
      email: vehicleOwner.email,
      accountId: vehicleOwner.accountId,
      idNumber: vehicleOwner.idNumber,
      address: vehicleOwner.address,
    );
  }

  factory VehicleOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleOwnerModelFromJson(json);
}
