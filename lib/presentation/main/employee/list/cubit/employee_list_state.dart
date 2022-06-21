part of 'employee_list_cubit.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({required List<Employees>? employees}) =
      _EmployeeState;

  factory EmployeeState.initial() => const EmployeeState(employees: null);
  factory EmployeeState.reLoad(List<Employees>? employees) => EmployeeState(
        employees: employees,
      );

  factory EmployeeState.fromJson(Map<String, dynamic> json) =>
      _$EmployeeStateFromJson(json);
}
