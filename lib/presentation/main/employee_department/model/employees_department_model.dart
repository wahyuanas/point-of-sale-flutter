import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';

part 'employees_department_model.freezed.dart';
part 'employees_department_model.g.dart';

@freezed
class EmployeesDepartmentModel with _$EmployeesDepartmentModel {
  const EmployeesDepartmentModel._();
  const factory EmployeesDepartmentModel({
    required int id,
    required String uuid,
    required String code,
    required String name,
    required int accountId,
  }) = _EmployeesDepartmentModel;

  factory EmployeesDepartmentModel.createEmployeesDepartmentModel(
      EmployeesDepartment? employeesDepartment) {
    return EmployeesDepartmentModel(
      id: employeesDepartment!.id,
      uuid: employeesDepartment.uuid,
      code: employeesDepartment.code,
      name: employeesDepartment.name,
      accountId: employeesDepartment.accountId,
    );
  }

  factory EmployeesDepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesDepartmentModelFromJson(json);
}
