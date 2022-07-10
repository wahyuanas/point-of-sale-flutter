import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "vehicle_type_object_value.freezed.dart";

@freezed
class CreateVehicleType with _$CreateVehicleType {
  const factory CreateVehicleType({
    required CreateVehicleTypeUuid uuid,
    required CreateVehicleTypeManufacture manufacture,
    required CreateVehicleTypeModel model,
    required CreateVehicleTypeColor color,
    required CreateVehicleTypeDescription description,
    required CreateVehicleTypeYear year,
    required CreateVehicleTypeAccountId accountId,
  }) = _CreateVehicleType;

  factory CreateVehicleType.empty() => CreateVehicleType(
      uuid: CreateVehicleTypeUuid(''),
      manufacture: CreateVehicleTypeManufacture(null),
      model: CreateVehicleTypeModel(''),
      color: CreateVehicleTypeColor(''),
      description: CreateVehicleTypeDescription(''),
      year: CreateVehicleTypeYear(''),
      accountId: CreateVehicleTypeAccountId(null));
}

extension CreateVehicleTypeX on CreateVehicleType {
  Option<ObjectValueFailure> get failureOption {
    return model.failureOrUnit
        .andThen(color.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(year.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
