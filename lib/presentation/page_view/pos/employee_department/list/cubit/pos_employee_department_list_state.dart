part of 'pos_employee_department_list_cubit.dart';

@freezed
class PosEmployeeDepartmentListState with _$PosEmployeeDepartmentListState {
  const factory PosEmployeeDepartmentListState(
      {required List<EmployeesDepartmentModel>? employeesDepartments,
      required String? keyWord}) = _PosEmployeeDepartmentListState;

  factory PosEmployeeDepartmentListState.initial() =>
      const PosEmployeeDepartmentListState(
          employeesDepartments: null, keyWord: null);
}
