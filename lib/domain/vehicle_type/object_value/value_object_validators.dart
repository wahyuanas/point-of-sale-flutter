import 'package:dartz/dartz.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';

import 'object_value_failure.dart';

Either<FormVehicleTypeObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(
        FormVehicleTypeObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormVehicleTypeObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(
        FormVehicleTypeObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(
        FormVehicleTypeObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormVehicleTypeObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(
        FormVehicleTypeObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormVehicleTypeObjectValueFailure<VehicleManufacture?, String>,
        VehicleManufacture?>
    validateFieldNotVehicleManufactureAndNotEmpty(VehicleManufacture? input) {
  if (input == null) {
    return left(
        FormVehicleTypeObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
