import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class SignInObjectValueFailure<T, E>
    with _$SignInObjectValueFailure<T, E>, ObjectValueFailure {
  const factory SignInObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;
}
