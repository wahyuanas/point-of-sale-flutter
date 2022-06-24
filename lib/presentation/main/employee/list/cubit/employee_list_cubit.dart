import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/employee/entity/employees.dart';

part 'employee_list_state.dart';
part 'employee_list_cubit.freezed.dart';
part 'employee_list_cubit.g.dart';

class EmployeeCubit extends HydratedCubit<EmployeeState> {
  EmployeeCubit() : super(EmployeeState.initial());

  void employeeStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(employees: state.employees));
  }

  @override
  EmployeeState fromJson(Map<String, dynamic> json) {
    debugPrint("Employee CUBIT FROM JSON");
    return EmployeeState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(EmployeeState state) {
    debugPrint("Employee CUBIT TO JSON ${state.employees}");
    return state.toJson();
  }
}
