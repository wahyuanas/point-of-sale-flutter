import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateEmployeeUuid extends ObjectValue<String> {
  @override
  final Either<FormEmployeeObjectValueFailure<String, String>, String> value;

  factory CreateEmployeeUuid(String input) {
    return CreateEmployeeUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeeUuid._(this.value);
}

class CreateEmployeeCode extends ObjectValue<String> {
  @override
  final Either<FormEmployeeObjectValueFailure<String, String>, String> value;

  factory CreateEmployeeCode(String input) {
    return CreateEmployeeCode._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeeCode._(this.value);
}

class CreateEmployeeName extends ObjectValue<String> {
  @override
  final Either<FormEmployeeObjectValueFailure<String, String>, String> value;

  factory CreateEmployeeName(String input) {
    return CreateEmployeeName._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeeName._(this.value);
}

class CreateEmployeePhoneNumber extends ObjectValue<String> {
  @override
  final Either<FormEmployeeObjectValueFailure<String, String>, String> value;

  factory CreateEmployeePhoneNumber(String input) {
    return CreateEmployeePhoneNumber._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeePhoneNumber._(this.value);
}

class CreateEmployeeEmail extends ObjectValue<String> {
  @override
  final Either<FormEmployeeObjectValueFailure<String, String>, String> value;

  factory CreateEmployeeEmail(String input) {
    return CreateEmployeeEmail._(validateEmail(input));
  }

  const CreateEmployeeEmail._(this.value);
}

class CreateEmployeeDepartment extends ObjectValue<EmployeesDepartmentModel?> {
  @override
  final Either<
      FormEmployeeObjectValueFailure<EmployeesDepartmentModel?, String>,
      EmployeesDepartmentModel?> value;

  factory CreateEmployeeDepartment(EmployeesDepartmentModel? input) {
    return CreateEmployeeDepartment._(
        validateFieldNotEmployeeAndNotEmpty(input));
  }

  const CreateEmployeeDepartment._(this.value);
}

class CreateEmployeeAccountId extends ObjectValue<int> {
  @override
  final Either<FormEmployeeObjectValueFailure<String, String>, int> value;

  factory CreateEmployeeAccountId(String input) {
    return CreateEmployeeAccountId._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateEmployeeAccountId._(this.value);
}
