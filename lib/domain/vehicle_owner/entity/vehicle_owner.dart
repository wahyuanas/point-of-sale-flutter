import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'vehicle_owner.freezed.dart';
part 'vehicle_owner.g.dart';

@freezed
class VehicleOwner with _$VehicleOwner implements IEntity {
  const VehicleOwner._();
  const factory VehicleOwner({
    required int id,
    required int uuid,
    required String name,
    required String phoneNumber,
    required String email,
    required String idNumber,
    required String address,
    required int idAccount,
  }) = _VehicleOwner;

  factory VehicleOwner.fromJson(Map<String, dynamic> json) =>
      _$VehicleOwnerFromJson(json);
}
