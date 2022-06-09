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

Either<SignUpObjectValueFailure<String, String>, int> validateFieldIntNotEmpty(
    String input) {
  if (input.isEmpty) {
    return left(SignUpObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<SignUpObjectValueFailure<String, String>, String> validateEmail(input) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
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
