part of 'employee_form_create_cubit.dart';

@freezed
class EmployeeFormCreateState with _$EmployeeFormCreateState {
  const factory EmployeeFormCreateState(
      {required StateStatus<FailureExceptions, Employees> status,
      required CreateEmployee createEmployee,
      required bool initial}) = _EmployeeFormCreateState;

  factory EmployeeFormCreateState.initial() => EmployeeFormCreateState(
      status: const StateStatus.initial(),
      createEmployee: CreateEmployee.empty(),
      initial: true);
}
