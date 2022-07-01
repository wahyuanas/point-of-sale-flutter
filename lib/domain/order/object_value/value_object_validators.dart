import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'object_value_failure.dart';
import 'order_object_value.dart';

Either<FormItemObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormItemObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormItemObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        FormItemObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (int.tryParse(input.replaceAll('.', '')) == null) {
    return left(FormItemObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input.replaceAll('.', '')));
  }
}

Either<FormItemObjectValueFailure<int?, String>, int?>
    validateFieldNotIntAndNotEmpty1(int? input) {
  if (input == null) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormItemObjectValueFailure<String, String>, DateTime>
    validateFieldNotDateTimeAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(DateTime(2000));
  }
}

Either<FormItemObjectValueFailure<String, String>, double>
    validateFieldNotDoubleAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormItemObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[0-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        FormItemObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (double.tryParse(input) == null) {
    return left(FormItemObjectValueFailure.notDoubleField(failedValue: input));
  } else {
    return right(double.tryParse(input)!);
  }
}

Either<FormItemObjectValueFailure<String, String>, double?>
    validateFieldNotDoubleAndEmpty(String? input) {
  if (input == null) {
    return right(null);
  }
  if (input.isEmpty) {
    return right(null);
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormItemObjectValueFailure.noSpaceAllowed(failedValue: input));
  } else if (!RegExp(r'^[0-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        FormItemObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (double.tryParse(input) == null) {
    return left(FormItemObjectValueFailure.notDoubleField(failedValue: input));
  } else {
    return right(double.tryParse(input));
  }
}

Either<FormItemObjectValueFailure<String, String>, CraetePaymentCardInfo?>
    validateFieldPaymentCardInfo(CraetePaymentCardInfo? input) {
  debugPrint("ORDER VALUE OBJECT VALIDATOR ");
  if (input == null) {
    return right(null);
  } else {
    return right(input);
  }
}
