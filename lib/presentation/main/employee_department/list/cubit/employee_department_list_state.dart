part of 'employee_department_list_cubit.dart';

@freezed
class EmployeeDepartmentListState with _$EmployeeDepartmentListState {
  const factory EmployeeDepartmentListState(
          {required List<EmployeesDepartment>? employeesDepartments}) =
      _EmployeeDepartmentListState;

  factory EmployeeDepartmentListState.initial() =>
      const EmployeeDepartmentListState(employeesDepartments: null);
  factory EmployeeDepartmentListState.reLoad(
          List<EmployeesDepartment>? employeesDepartments) =>
      EmployeeDepartmentListState(
        employeesDepartments: employeesDepartments,
      );

  factory EmployeeDepartmentListState.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDepartmentListStateFromJson(json);
}
