import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/employee/entity/employees.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';

part 'employees_model.freezed.dart';
part 'employees_model.g.dart';

@freezed
class EmployeesModel with _$EmployeesModel {
  const EmployeesModel._();
  const factory EmployeesModel({
    required int id,
    required String uuid,
    required String code,
    required String name,
    required String phoneNumber,
    required String email,
    required int accountId,
    required EmployeesDepartmentModel? department,
  }) = _EmployeesModel;

  factory EmployeesModel.createEmployeesModel(
      Employees employee, EmployeesDepartmentModel? employeesDepartmentModel) {
    return EmployeesModel(
      id: employee.id,
      uuid: employee.uuid,
      code: employee.code,
      name: employee.name,
      accountId: employee.accountId,
      phoneNumber: employee.phoneNumber,
      email: employee.email,
      department: employeesDepartmentModel,
    );
  }

  factory EmployeesModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesModelFromJson(json);
}
