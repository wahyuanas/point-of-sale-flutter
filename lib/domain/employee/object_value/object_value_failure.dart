import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormEmployeeObjectValueFailure<T, E>
    with _$FormEmployeeObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormEmployeeObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormEmployeeObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory FormEmployeeObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormEmployeeObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;

  const factory FormEmployeeObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;
}
