import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormVehicleObjectValueFailure<T, E>
    with _$FormVehicleObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormVehicleObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormVehicleObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory FormVehicleObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormVehicleObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;

  const factory FormVehicleObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;
}
