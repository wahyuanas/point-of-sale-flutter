import 'package:dartz/dartz.dart';

import 'object_value_failure.dart';

Either<FormVehicleManufactureObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormVehicleManufactureObjectValueFailure.emptyField(
        failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormVehicleManufactureObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormVehicleManufactureObjectValueFailure.emptyField(
        failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormVehicleManufactureObjectValueFailure.noSpaceAllowed(
        failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormVehicleManufactureObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(FormVehicleManufactureObjectValueFailure.notIntField(
        failedValue: input));
  } else {
    return right(int.parse(input));
  }
}
