import 'package:dartz/dartz.dart';

import 'object_value_failure.dart';

Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(
        FormVehicleOwnerObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormVehicleOwnerObjectValueFailure<String, String>, String>
    validateEmail(input) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (input.isEmpty) {
    return left(
        FormVehicleOwnerObjectValueFailure.emptyField(failedValue: input));
  }
  if (emailValid == true) {
    return right(input);
  } else {
    return left(
        FormVehicleOwnerObjectValueFailure.invalidEmail(failedValue: input));
  }
}

Either<FormVehicleOwnerObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(
        FormVehicleOwnerObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(
        FormVehicleOwnerObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormVehicleOwnerObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(
        FormVehicleOwnerObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}
