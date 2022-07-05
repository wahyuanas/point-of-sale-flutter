import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/employee/entity/employees.dart';

part 'employee_list_state.dart';
part 'employee_list_cubit.freezed.dart';
part 'employee_list_cubit.g.dart';

class EmployeeListCubit extends HydratedCubit<EmployeeListState> {
  EmployeeListCubit() : super(EmployeeListState.initial());

  void employeeStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(employees: state.employees));
  }

  onAddEmployee(Employees employee) {
    List<Employees> employees = [];
    if (state.employees != null) {
      employees = List.from(state.employees!.toList());
      employees.add(employee);
    } else {
      employees.add(employee);
    }
    emit(state.copyWith(
      employees: employees,
    ));
  }

  @override
  EmployeeListState fromJson(Map<String, dynamic> json) {
    debugPrint("Employee CUBIT FROM JSON");
    return EmployeeListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(EmployeeListState state) {
    debugPrint("Employee CUBIT TO JSON ${state.employees}");
    return state.toJson();
  }
}
