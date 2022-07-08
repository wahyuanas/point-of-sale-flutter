import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';

part 'employee_department_list_state.dart';
part 'employee_department_list_cubit.freezed.dart';
part 'employee_department_list_cubit.g.dart';

class EmployeeDepartmentListCubit
    extends HydratedCubit<EmployeeDepartmentListState> {
  EmployeeDepartmentListCubit() : super(EmployeeDepartmentListState.initial());

  void employeeStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(employeesDepartments: state.employeesDepartments));
  }

  onAddEmployeeDepartment(EmployeesDepartment employeesDepartment) {
    List<EmployeesDepartment>? employeesDepartments = [];
    if (state.employeesDepartments != null) {
      employeesDepartments = List.from(state.employeesDepartments!.toList());
      employeesDepartments.add(employeesDepartment);
    } else {
      employeesDepartments.add(employeesDepartment);
    }
    if (employeesDepartments.isEmpty) {
      employeesDepartments = null;
    }
    emit(state.copyWith(
      employeesDepartments: employeesDepartments,
    ));
  }

  @override
  EmployeeDepartmentListState fromJson(Map<String, dynamic> json) {
    debugPrint("Employee CUBIT FROM JSON");
    return EmployeeDepartmentListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(EmployeeDepartmentListState state) {
    debugPrint("Employee CUBIT TO JSON ${state.employeesDepartments}");
    return state.toJson();
  }
}
