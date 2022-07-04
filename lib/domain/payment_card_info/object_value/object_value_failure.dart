import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part 'object_value_failure.freezed.dart';

@freezed
class CraetePaymentCardInfoObjectValueFailure<T, E>
    with _$CraetePaymentCardInfoObjectValueFailure<T, E>, ObjectValueFailure {
  const factory CraetePaymentCardInfoObjectValueFailure.emptyField({
    required T failedValue,
  }) = EmptyField<T, E>;

  const factory CraetePaymentCardInfoObjectValueFailure.notIntField({
    required T failedValue,
  }) = NotIntField<T, E>;

  const factory CraetePaymentCardInfoObjectValueFailure.notDoubleField({
    required T failedValue,
  }) = NotDoubleField<T, E>;

  const factory CraetePaymentCardInfoObjectValueFailure.noSpaceAllowed({
    required T failedValue,
  }) = NoSpaceAllowed<T, E>;

  const factory CraetePaymentCardInfoObjectValueFailure.exceptOneToNineAllowed({
    required T failedValue,
  }) = ExceptOneToNineAllowed<T, E>;
}
