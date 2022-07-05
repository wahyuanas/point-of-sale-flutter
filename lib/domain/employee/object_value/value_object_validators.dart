import 'package:dartz/dartz.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';

import 'object_value_failure.dart';

Either<FormEmployeeObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormEmployeeObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<FormEmployeeObjectValueFailure<String, String>, String> validateEmail(
    input) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (input.isEmpty) {
    return left(FormEmployeeObjectValueFailure.emptyField(failedValue: input));
  }
  if (emailValid == true) {
    return right(input);
  } else {
    return left(
        FormEmployeeObjectValueFailure.invalidEmail(failedValue: input));
  }
}

Either<FormEmployeeObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(FormEmployeeObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(
        FormEmployeeObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(FormEmployeeObjectValueFailure.exceptOneToNineAllowed(
        failedValue: input));
  } else if (int.tryParse(input) == null) {
    return left(FormEmployeeObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input));
  }
}

Either<FormEmployeeObjectValueFailure<EmployeesDepartmentModel?, String>,
        EmployeesDepartmentModel?>
    validateFieldNotEmployeeAndNotEmpty(EmployeesDepartmentModel? input) {
  if (input == null) {
    return left(FormEmployeeObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
