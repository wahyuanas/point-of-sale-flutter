part of 'employees_department_form_create_cubit.dart';

@freezed
class EmployeeDepartmentFormCreateState
    with _$EmployeeDepartmentFormCreateState {
  const factory EmployeeDepartmentFormCreateState(
      {required StateStatus<FailureExceptions, EmployeesDepartment> status,
      required CreateEmployeeDepartment createEmployeeDepartment,
      required bool initial}) = _EmployeeDepartmentFormCreateState;

  factory EmployeeDepartmentFormCreateState.initial() =>
      EmployeeDepartmentFormCreateState(
          status: const StateStatus.initial(),
          createEmployeeDepartment: CreateEmployeeDepartment.empty(),
          initial: true);
}
