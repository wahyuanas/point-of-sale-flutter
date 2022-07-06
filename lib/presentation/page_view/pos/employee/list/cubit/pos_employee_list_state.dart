part of 'pos_employee_list_cubit.dart';

@freezed
class PosEmployeeListState with _$PosEmployeeListState {
  const factory PosEmployeeListState(
      {required List<EmployeesModel>? employees,
      required String? keyWord}) = _PosEmployeeListState;

  factory PosEmployeeListState.initial() =>
      const PosEmployeeListState(employees: null, keyWord: null);
}
