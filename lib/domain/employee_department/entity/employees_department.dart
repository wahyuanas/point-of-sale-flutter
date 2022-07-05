import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/employee_department_object_value.dart';

part 'employees_department.freezed.dart';
part 'employees_department.g.dart';

@freezed
class EmployeesDepartment with _$EmployeesDepartment implements IEntity {
  const EmployeesDepartment._();
  const factory EmployeesDepartment({
    required int id,
    required String uuid,
    required String name,
    required String code,
    required int accountId,
  }) = _EmployeesDepartment;

  factory EmployeesDepartment.createEmployeeDepartment(
      int id, CreateEmployeeDepartment createEmployeeDepartment) {
    return EmployeesDepartment(
      id: id,
      uuid: const Uuid().v4(),
      code: createEmployeeDepartment.code.getOrCrash(),
      name: createEmployeeDepartment.name.getOrCrash(),
      accountId: 1,
    );
  }

  factory EmployeesDepartment.fromJson(Map<String, dynamic> json) =>
      _$EmployeesDepartmentFromJson(json);
}
