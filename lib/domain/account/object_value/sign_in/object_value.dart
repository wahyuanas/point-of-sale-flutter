import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class SignInEmailOrPhoneNumber extends ObjectValue<String> {
  @override
  final Either<SignInObjectValueFailure<String, String>, String> value;

  factory SignInEmailOrPhoneNumber(String input) {
    return SignInEmailOrPhoneNumber._(validateFieldStringNotEmpty(input));
  }

  const SignInEmailOrPhoneNumber._(this.value);
}

class SignInPassword extends ObjectValue<String> {
  @override
  final Either<SignInObjectValueFailure<String, String>, String> value;

  factory SignInPassword(String input) {
    return SignInPassword._(validateFieldStringNotEmpty(input));
  }

  const SignInPassword._(this.value);
}
