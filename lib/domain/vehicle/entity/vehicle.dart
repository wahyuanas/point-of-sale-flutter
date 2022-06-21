import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle implements IEntity {
  const Vehicle._();
  const factory Vehicle({
    required int id,
    required String policyNumber,
    required String machineNumber,
    required int currentKm,
    required String description,
    required int idAccount,
    required int idVehicleOwner,
    required int? idType,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
