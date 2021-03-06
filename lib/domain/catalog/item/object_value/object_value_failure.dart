import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class FormItemObjectValueFailure<T, E>
    with _$FormItemObjectValueFailure<T, E>, ObjectValueFailure {
  const factory FormItemObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory FormItemObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;

  const factory FormItemObjectValueFailure.notDoubleField({
    required T failedValue,
  }) = NotDoubleField<T, E>;

  const factory FormItemObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory FormItemObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;
}
