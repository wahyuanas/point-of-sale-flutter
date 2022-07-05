import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormEmployeeDepartmentObjectValueFailure<T, E>
    with _$FormEmployeeDepartmentObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormEmployeeDepartmentObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormEmployeeDepartmentObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory FormEmployeeDepartmentObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormEmployeeDepartmentObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;

  const factory FormEmployeeDepartmentObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;
}
