import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormVehicleManufactureObjectValueFailure<T, E>
    with _$FormVehicleManufactureObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormVehicleManufactureObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormVehicleManufactureObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory FormVehicleManufactureObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormVehicleManufactureObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;

  const factory FormVehicleManufactureObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;
}
