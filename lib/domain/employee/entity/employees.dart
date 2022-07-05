import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/employee/object_value/employee_object_value.dart';
import 'package:uuid/uuid.dart';

part 'employees.freezed.dart';
part 'employees.g.dart';

@freezed
class Employees with _$Employees implements IEntity {
  const Employees._();
  const factory Employees({
    required int id,
    required String uuid,
    required String code,
    required String name,
    required String phoneNumber,
    required String email,
    required int accountId,
    required int departmentId,
  }) = _Employees;

  factory Employees.createEmployee(int id, CreateEmployee createEmployee) {
    return Employees(
        id: id,
        uuid: const Uuid().v4(),
        code: createEmployee.code.getOrCrash(),
        name: createEmployee.name.getOrCrash(),
        accountId: 1,
        phoneNumber: createEmployee.phoneNumber.getOrCrash(),
        email: createEmployee.email.getOrCrash(),
        departmentId: createEmployee.department.getOrCrash()!.id);
  }

  factory Employees.fromJson(Map<String, dynamic> json) =>
      _$EmployeesFromJson(json);
}
