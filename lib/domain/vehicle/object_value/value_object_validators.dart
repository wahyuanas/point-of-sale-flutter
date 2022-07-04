import 'package:dartz/dartz.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';

import 'object_value_failure.dart';

Either<FormVehicleObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormVehicleObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormVehicleObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormVehicleObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(
        FormVehicleObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormVehicleObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(FormVehicleObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormVehicleObjectValueFailure<VehicleOwnerModel?, String>,
        VehicleOwnerModel?>
    validateFieldNotVehicleOwnerAndNotNull(VehicleOwnerModel? input) {
  if (input == null) {
    return left(FormVehicleObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormVehicleObjectValueFailure<VehicleTypeModel?, String>,
        VehicleTypeModel?>
    validateFieldNotVehicleTypeAndNotNull(VehicleTypeModel? input) {
  if (input == null) {
    return left(FormVehicleObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
