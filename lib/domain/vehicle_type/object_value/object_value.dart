import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateVehicleTypeUuid extends ObjectValue<String> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<String, String>, String> value;

  factory CreateVehicleTypeUuid(String input) {
    return CreateVehicleTypeUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleTypeUuid._(this.value);
}

class CreateVehicleTypeManufacture extends ObjectValue<VehicleManufacture?> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<VehicleManufacture?, String>,
      VehicleManufacture?> value;

  factory CreateVehicleTypeManufacture(VehicleManufacture? input) {
    return CreateVehicleTypeManufacture._(
        validateFieldNotVehicleManufactureAndNotEmpty(input));
  }

  const CreateVehicleTypeManufacture._(this.value);
}

class CreateVehicleTypeModel extends ObjectValue<String> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<String, String>, String> value;

  factory CreateVehicleTypeModel(String input) {
    return CreateVehicleTypeModel._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleTypeModel._(this.value);
}

class CreateVehicleTypeColor extends ObjectValue<String> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<String, String>, String> value;

  factory CreateVehicleTypeColor(String input) {
    return CreateVehicleTypeColor._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleTypeColor._(this.value);
}

class CreateVehicleTypeDescription extends ObjectValue<String> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<String, String>, String> value;

  factory CreateVehicleTypeDescription(String input) {
    return CreateVehicleTypeDescription._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleTypeDescription._(this.value);
}

class CreateVehicleTypeYear extends ObjectValue<int> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<String, String>, int> value;

  factory CreateVehicleTypeYear(String input) {
    return CreateVehicleTypeYear._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateVehicleTypeYear._(this.value);
}

class CreateVehicleTypeAccountId extends ObjectValue<int> {
  @override
  final Either<FormVehicleTypeObjectValueFailure<String, String>, int> value;

  factory CreateVehicleTypeAccountId(String input) {
    return CreateVehicleTypeAccountId._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateVehicleTypeAccountId._(this.value);
}
