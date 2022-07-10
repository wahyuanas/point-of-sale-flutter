import 'package:dartz/dartz.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';

import 'object_value_failure.dart';

Either<FormEmployeeDepartmentObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormEmployeeDepartmentObjectValueFailure.emptyField(
        failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormEmployeeDepartmentObjectValueFailure<String, String>, String>
    validateEmail(input) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (input.isEmpty) {
    return left(FormEmployeeDepartmentObjectValueFailure.emptyField(
        failedValue: input));
  }
  if (emailValid == true) {
    return right(input);
  } else {
    return left(FormEmployeeDepartmentObjectValueFailure.invalidEmail(
        failedValue: input));
  }
}

Either<FormEmployeeDepartmentObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormEmployeeDepartmentObjectValueFailure.emptyField(
        failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(FormEmployeeDepartmentObjectValueFailure.noSpaceAllowed(
        failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormEmployeeDepartmentObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(FormEmployeeDepartmentObjectValueFailure.notIntField(
        failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormEmployeeDepartmentObjectValueFailure<EmployeesModel?, String>,
        EmployeesModel?>
    validateFieldNotEmployeeAndNotEmpty(EmployeesModel? input) {
  if (input == null) {
    return left(FormEmployeeDepartmentObjectValueFailure.emptyField(
        failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormEmployeeDepartmentObjectValueFailure<int?, String>, int?>
    validateFieldNotIntAndNotEmpty1(int? input) {
  if (input == null) {
    return right(input);
    //return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
