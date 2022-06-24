import 'package:dartz/dartz.dart';

import 'object_value_failure.dart';

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
  } else if (int.tryParse(input) == null) {
    return left(FormItemObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormItemObjectValueFailure<String, String>, int?>
    validateFieldNullNotIntAndNotEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormItemObjectValueFailure<String, String>, String?>
    validateFieldNullNotEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return left(FormItemObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
