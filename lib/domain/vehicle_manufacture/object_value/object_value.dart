import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateVehicleManufactureUuid extends ObjectValue<String> {
  @override
  final Either<FormVehicleManufactureObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleManufactureUuid(String input) {
    return CreateVehicleManufactureUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleManufactureUuid._(this.value);
}

class CreateVehicleManufactureName extends ObjectValue<String> {
  @override
  final Either<FormVehicleManufactureObjectValueFailure<String, String>, String>
      value;

  factory CreateVehicleManufactureName(String input) {
    return CreateVehicleManufactureName._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleManufactureName._(this.value);
}

class CreateVehicleManufactureAccountId extends ObjectValue<int> {
  @override
  final Either<FormVehicleManufactureObjectValueFailure<String, String>, int>
      value;

  factory CreateVehicleManufactureAccountId(String input) {
    return CreateVehicleManufactureAccountId._(
        validateFieldNotIntAndNotEmpty(input));
  }

  const CreateVehicleManufactureAccountId._(this.value);
}
