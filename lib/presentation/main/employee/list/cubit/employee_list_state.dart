part of 'employee_list_cubit.dart';

@freezed
class EmployeeListState with _$EmployeeListState {
  const factory EmployeeListState({required List<Employees>? employees}) =
      _EmployeeListState;

  factory EmployeeListState.initial() =>
      const EmployeeListState(employees: null);
  factory EmployeeListState.reLoad(List<Employees>? employees) =>
      EmployeeListState(
        employees: employees,
      );

  factory EmployeeListState.fromJson(Map<String, dynamic> json) =>
      _$EmployeeListStateFromJson(json);
}
