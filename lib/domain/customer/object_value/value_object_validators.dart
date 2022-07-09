import 'package:dartz/dartz.dart';

import 'object_value_failure.dart';

Either<FormCustomerObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormCustomerObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormCustomerObjectValueFailure<String, String>, String> validateEmail(
    input) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (input.isEmpty) {
    return left(FormCustomerObjectValueFailure.emptyField(failedValue: input));
  } else if (emailValid == true) {
    return right(input);
  } else {
    return left(
        FormCustomerObjectValueFailure.invalidEmail(failedValue: input));
  }
}

Either<FormCustomerObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormCustomerObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(
        FormCustomerObjectValueFailure.noSpaceAllowed(failedValue: input));
  } else if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormCustomerObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(FormCustomerObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}
