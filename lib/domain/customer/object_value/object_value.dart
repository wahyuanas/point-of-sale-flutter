import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateCustomerUuid extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerUuid(String input) {
    return CreateCustomerUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateCustomerUuid._(this.value);
}

class CreateCustomerCode extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerCode(String input) {
    return CreateCustomerCode._(validateFieldStringNotEmpty(input));
  }

  const CreateCustomerCode._(this.value);
}

class CreateCustomerName extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerName(String input) {
    return CreateCustomerName._(validateFieldStringNotEmpty(input));
  }

  const CreateCustomerName._(this.value);
}

class CreateCustomerPhoneNumber extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerPhoneNumber(String input) {
    return CreateCustomerPhoneNumber._(validateFieldStringNotEmpty(input));
  }

  const CreateCustomerPhoneNumber._(this.value);
}

class CreateCustomerAddress extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerAddress(String input) {
    return CreateCustomerAddress._(validateFieldStringNotEmpty(input));
  }

  const CreateCustomerAddress._(this.value);
}

class CreateCustomerEmail extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerEmail(String input) {
    return CreateCustomerEmail._(validateEmail(input));
  }

  const CreateCustomerEmail._(this.value);
}

class CreateCustomerType extends ObjectValue<String> {
  @override
  final Either<FormCustomerObjectValueFailure<String, String>, String> value;

  factory CreateCustomerType(String input) {
    return CreateCustomerType._(validateFieldStringNotEmpty(input));
  }

  const CreateCustomerType._(this.value);
}

class CreateCustomerAccountId extends ObjectValue<int?> {
  @override
  final Either<FormCustomerObjectValueFailure<int?, String>, int?> value;

  factory CreateCustomerAccountId(int? input) {
    return CreateCustomerAccountId._(validateFieldNotIntAndNotEmpty1(input));
  }

  const CreateCustomerAccountId._(this.value);
}
