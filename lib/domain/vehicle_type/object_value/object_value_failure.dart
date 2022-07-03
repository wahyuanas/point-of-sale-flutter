import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormVehicleTypeObjectValueFailure<T, E>
    with _$FormVehicleTypeObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormVehicleTypeObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormVehicleTypeObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory FormVehicleTypeObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormVehicleTypeObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;

  const factory FormVehicleTypeObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;
}
