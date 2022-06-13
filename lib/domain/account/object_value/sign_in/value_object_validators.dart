import 'package:dartz/dartz.dart';

import 'object_value_failure.dart';

Either<SignInObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(SignInObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
