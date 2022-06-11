import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class SignUpObjectValueFailure<T, E>
    with _$SignUpObjectValueFailure<T, E>, ObjectValueFailure {
  const factory SignUpObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory SignUpObjectValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T, E>;

  const factory SignUpObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;

  const factory SignUpObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;
}
