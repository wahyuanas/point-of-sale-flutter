import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class SignUpCompanyName extends ObjectValue<String> {
  @override
  final Either<SignUpObjectValueFailure<String, String>, String> value;

  factory SignUpCompanyName(String input) {
    return SignUpCompanyName._(validateFieldNotEmpty(input));
  }

  const SignUpCompanyName._(this.value);
}

class SignUpPhoneNumber extends ObjectValue<String> {
  @override
  final Either<SignUpObjectValueFailure<String, String>, String> value;

  factory SignUpPhoneNumber(String input) {
    return SignUpPhoneNumber._(validateFieldNotEmpty(input));
  }

  const SignUpPhoneNumber._(this.value);
}

class SignUpAddress extends ObjectValue<String> {
  @override
  final Either<SignUpObjectValueFailure<String, String>, String> value;

  factory SignUpAddress(String input) {
    return SignUpAddress._(validateFieldNotEmpty(input));
  }

  const SignUpAddress._(this.value);
}

class SignUpEmail extends ObjectValue<String> {
  @override
  final Either<SignUpObjectValueFailure<String, String>, String> value;

  factory SignUpEmail(String input) {
    return SignUpEmail._(validateEmail(input));
  }

  const SignUpEmail._(this.value);
}

class SignUpOutletsNumber extends ObjectValue<String> {
  @override
  final Either<SignUpObjectValueFailure<String, String>, String> value;

  factory SignUpOutletsNumber(String input) {
    return SignUpOutletsNumber._(validateFieldNotEmpty(input));
  }

  const SignUpOutletsNumber._(this.value);
}

class SignUpBusinessType extends ObjectValue<String> {
  @override
  final Either<SignUpObjectValueFailure<String, String>, String> value;

  factory SignUpBusinessType(String input) {
    return SignUpBusinessType._(validateFieldNotEmpty(input));
  }

  const SignUpBusinessType._(this.value);
}
