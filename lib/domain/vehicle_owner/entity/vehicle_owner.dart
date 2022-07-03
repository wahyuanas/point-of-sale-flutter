import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/vehicle_owner_object_value.dart';

part 'vehicle_owner.freezed.dart';
part 'vehicle_owner.g.dart';

@freezed
class VehicleOwner with _$VehicleOwner implements IEntity {
  const VehicleOwner._();
  const factory VehicleOwner({
    required int id,
    required String uuid,
    required String name,
    required String phoneNumber,
    required String email,
    required String idNumber,
    required String address,
    required int accountId,
  }) = _VehicleOwner;

  factory VehicleOwner.createVehicleOwner(
      int id, CreateVehicleOwner createVehicleOwner) {
    return VehicleOwner(
      id: id,
      uuid: const Uuid().v4(),
      name: createVehicleOwner.name.getOrCrash(),
      phoneNumber: createVehicleOwner.phoneNumber.getOrCrash(),
      email: createVehicleOwner.email.getOrCrash(),
      accountId: 1,
      idNumber: createVehicleOwner.idNumber.getOrCrash(),
      address: createVehicleOwner.address.getOrCrash(),
    );
  }

  factory VehicleOwner.fromJson(Map<String, dynamic> json) =>
      _$VehicleOwnerFromJson(json);
}
