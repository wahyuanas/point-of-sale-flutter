import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'vehicle_type.freezed.dart';
part 'vehicle_type.g.dart';

@freezed
class VehicleType with _$VehicleType implements IEntity {
  const VehicleType._();
  const factory VehicleType({
    required int id,
    required int uuid,
    required String manufacture,
    required String model,
    required int year,
    required String color,
    required String description,
    required int idAccount,
  }) = _VehicleType;

  factory VehicleType.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeFromJson(json);
}
