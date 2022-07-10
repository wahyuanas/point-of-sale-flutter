import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateVehicleUuid extends ObjectValue<String> {
  @override
  final Either<FormVehicleObjectValueFailure<String, String>, String> value;

  factory CreateVehicleUuid(String input) {
    return CreateVehicleUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleUuid._(this.value);
}

class CreateVehiclePolicyNumber extends ObjectValue<String> {
  @override
  final Either<FormVehicleObjectValueFailure<String, String>, String> value;

  factory CreateVehiclePolicyNumber(String input) {
    return CreateVehiclePolicyNumber._(validateFieldStringNotEmpty(input));
  }

  const CreateVehiclePolicyNumber._(this.value);
}

class CreateVehicleMachineNumber extends ObjectValue<String> {
  @override
  final Either<FormVehicleObjectValueFailure<String, String>, String> value;

  factory CreateVehicleMachineNumber(String input) {
    return CreateVehicleMachineNumber._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleMachineNumber._(this.value);
}

class CreateVehicleCurrentKm extends ObjectValue<int> {
  @override
  final Either<FormVehicleObjectValueFailure<String, String>, int> value;

  factory CreateVehicleCurrentKm(String input) {
    return CreateVehicleCurrentKm._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateVehicleCurrentKm._(this.value);
}

class CreateVehicleDescription extends ObjectValue<String> {
  @override
  final Either<FormVehicleObjectValueFailure<String, String>, String> value;

  factory CreateVehicleDescription(String input) {
    return CreateVehicleDescription._(validateFieldStringNotEmpty(input));
  }

  const CreateVehicleDescription._(this.value);
}

class CreateVehicleOwner extends ObjectValue<VehicleOwnerModel?> {
  @override
  final Either<FormVehicleObjectValueFailure<VehicleOwnerModel?, String>,
      VehicleOwnerModel?> value;

  factory CreateVehicleOwner(VehicleOwnerModel? input) {
    return CreateVehicleOwner._(validateFieldNotVehicleOwnerAndNotNull(input));
  }

  const CreateVehicleOwner._(this.value);
}

class CreateVehicleType extends ObjectValue<VehicleTypeModel?> {
  @override
  final Either<FormVehicleObjectValueFailure<VehicleTypeModel?, String>,
      VehicleTypeModel?> value;

  factory CreateVehicleType(VehicleTypeModel? input) {
    return CreateVehicleType._(validateFieldNotVehicleTypeAndNotNull(input));
  }

  const CreateVehicleType._(this.value);
}

class CreateVehicleAccountId extends ObjectValue<int?> {
  @override
  final Either<FormVehicleObjectValueFailure<int?, String>, int?> value;

  factory CreateVehicleAccountId(int? input) {
    return CreateVehicleAccountId._(validateFieldNotIntAndNotEmpty1(input));
  }

  const CreateVehicleAccountId._(this.value);
}
