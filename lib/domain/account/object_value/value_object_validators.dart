import 'package:dartz/dartz.dart';

import 'object_value_failure.dart';

Either<SignUpObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(SignUpObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<SignUpObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(SignUpObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(SignUpObjectValueFailure.noSpaceAllowed(failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(SignUpObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<SignUpObjectValueFailure<String, String>, int?>
    validateFieldNullNotIntAndNotEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return left(SignUpObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<SignUpObjectValueFailure<String, String>, String?>
    validateFieldNullNotEmpty(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return left(SignUpObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<SignUpObjectValueFailure<String, String>, String> validateEmail(input) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (input.isEmpty) {
    return left(SignUpObjectValueFailure.emptyField(failedValue: input));
  }
  if (emailValid == true) {
    return right(input);
  } else {
    return left(SignUpObjectValueFailure.invalidEmail(failedValue: input));
  }
}
