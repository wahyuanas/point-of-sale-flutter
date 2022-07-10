import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';

import 'object_value_failure.dart';
import 'value_object_validators.dart';

class CreateEmployeeDepartmentUuid extends ObjectValue<String> {
  @override
  final Either<FormEmployeeDepartmentObjectValueFailure<String, String>, String>
      value;

  factory CreateEmployeeDepartmentUuid(String input) {
    return CreateEmployeeDepartmentUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeeDepartmentUuid._(this.value);
}

class CreateEmployeeDepartmentCode extends ObjectValue<String> {
  @override
  final Either<FormEmployeeDepartmentObjectValueFailure<String, String>, String>
      value;

  factory CreateEmployeeDepartmentCode(String input) {
    return CreateEmployeeDepartmentCode._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeeDepartmentCode._(this.value);
}

class CreateEmployeeDepartmentName extends ObjectValue<String> {
  @override
  final Either<FormEmployeeDepartmentObjectValueFailure<String, String>, String>
      value;

  factory CreateEmployeeDepartmentName(String input) {
    return CreateEmployeeDepartmentName._(validateFieldStringNotEmpty(input));
  }

  const CreateEmployeeDepartmentName._(this.value);
}

class CreateEmployeeDepartmentAccountId extends ObjectValue<int?> {
  @override
  final Either<FormEmployeeDepartmentObjectValueFailure<int?, String>, int?>
      value;

  factory CreateEmployeeDepartmentAccountId(int? input) {
    return CreateEmployeeDepartmentAccountId._(
        validateFieldNotIntAndNotEmpty1(input));
  }

  const CreateEmployeeDepartmentAccountId._(this.value);
}
