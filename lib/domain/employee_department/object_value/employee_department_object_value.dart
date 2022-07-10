import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "employee_department_object_value.freezed.dart";

@freezed
class CreateEmployeeDepartment with _$CreateEmployeeDepartment {
  const factory CreateEmployeeDepartment(
          {required CreateEmployeeDepartmentUuid uuid,
          required CreateEmployeeDepartmentName name,
          required CreateEmployeeDepartmentCode code,
          required CreateEmployeeDepartmentAccountId accountId}) =
      _CreateEmployeeDepartment;

  factory CreateEmployeeDepartment.empty() => CreateEmployeeDepartment(
      uuid: CreateEmployeeDepartmentUuid(''),
      name: CreateEmployeeDepartmentName(''),
      code: CreateEmployeeDepartmentCode(''),
      accountId: CreateEmployeeDepartmentAccountId(null));
}

extension CreateEmployeeDepartmentX on CreateEmployeeDepartment {
  Option<ObjectValueFailure> get failureOption {
    return name.failureOrUnit
        .andThen(code.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
