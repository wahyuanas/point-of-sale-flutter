import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormVehicleOwnerObjectValueFailure<T, E>
    with _$FormVehicleOwnerObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormVehicleOwnerObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormVehicleOwnerObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory FormVehicleOwnerObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormVehicleOwnerObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;

  const factory FormVehicleOwnerObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;
}
