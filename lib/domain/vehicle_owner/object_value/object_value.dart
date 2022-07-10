import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateVehicleOwnerUuid extends ObjectValue<String> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleOwnerUuid(String input) {
    return CreateVehicleOwnerUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleOwnerUuid._(this.value);
}

class CreateVehicleOwnerName extends ObjectValue<String> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleOwnerName(String input) {
    return CreateVehicleOwnerName._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleOwnerName._(this.value);
}

class CreateVehicleOwnerPhoneNumber extends ObjectValue<String> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleOwnerPhoneNumber(String input) {
    return CreateVehicleOwnerPhoneNumber._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleOwnerPhoneNumber._(this.value);
}

class CreateVehicleOwnerEmail extends ObjectValue<String> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleOwnerEmail(String input) {
    return CreateVehicleOwnerEmail._(validateEmail(input));
  }

  const CreateVehicleOwnerEmail._(this.value);
}

class CreateVehicleOwnerIdNumber extends ObjectValue<String> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleOwnerIdNumber(String input) {
    return CreateVehicleOwnerIdNumber._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleOwnerIdNumber._(this.value);
}

class CreateVehicleOwnerAddress extends ObjectValue<String> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleOwnerAddress(String input) {
    return CreateVehicleOwnerAddress._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleOwnerAddress._(this.value);
}

class CreateVehicleOwnerAccountId extends ObjectValue<int?> {
  @override
  final Either<FormVehicleOwnerObjectValueFailure<int?, String>, int?> value;

  factory CreateVehicleOwnerAccountId(int? input) {
    return CreateVehicleOwnerAccountId._(
        validateFieldNotIntAndNotEmpty1(input));
  }

  const CreateVehicleOwnerAccountId._(this.value);
}
