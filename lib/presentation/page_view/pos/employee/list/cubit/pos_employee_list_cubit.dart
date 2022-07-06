import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';

part 'pos_employee_list_state.dart';
part 'pos_employee_list_cubit.freezed.dart';

class PosEmployeeListCubit extends Cubit<PosEmployeeListState> {
  final EmployeeListCubit employeeListCubit;
  final EmployeeDepartmentListCubit employeeDepartmentListCubit;
  PosEmployeeListCubit(
      {required this.employeeListCubit,
      required this.employeeDepartmentListCubit})
      : _employeeListCubit = employeeListCubit,
        _employeeDepartmentListCubit = employeeDepartmentListCubit,
        super(PosEmployeeListState.initial()) {
    _employeeListSubscription =
        _employeeListCubit.stream.listen((employeeListState) {
      onEmployeeChannged(employeeListState);
    });
  }
  final EmployeeListCubit _employeeListCubit;
  final EmployeeDepartmentListCubit _employeeDepartmentListCubit;
  late StreamSubscription _employeeListSubscription;

  onStarted() {
    List<EmployeesModel> employees =
        _employeeListCubit.state.employees!.map((employee) {
      EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
          .state.employeesDepartments
          ?.firstWhere((dept) => dept.id == employee.departmentId);

      return EmployeesModel.createEmployeesModel(employee, employeeDepartment);
    }).toList();

    emit(state.copyWith(employees: employees));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<EmployeesModel> employees = [];
      _employeeListCubit.state.employees?.forEach((employee) {
        if (employee.name.toLowerCase().contains(v.toLowerCase())) {
          EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhere((dept) => dept.id == employee.departmentId);

          employees.add(EmployeesModel.createEmployeesModel(
              employee, employeeDepartment));
        }
      });
      emit(state.copyWith(employees: employees, keyWord: v));
    } else {
      List<EmployeesModel> employees =
          _employeeListCubit.state.employees!.map((employee) {
        EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
            .state.employeesDepartments
            ?.firstWhere((dept) => dept.id == employee.departmentId);

        return EmployeesModel.createEmployeesModel(
            employee, employeeDepartment);
      }).toList();

      emit(state.copyWith(employees: employees));
    }
  }

  onReset() {
    List<EmployeesModel> employees =
        _employeeListCubit.state.employees!.map((employee) {
      EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
          .state.employeesDepartments
          ?.firstWhere((dept) => dept.id == employee.departmentId);

      return EmployeesModel.createEmployeesModel(employee, employeeDepartment);
    }).toList();

    emit(state.copyWith(employees: employees, keyWord: null));
  }

  onEmployeeChannged(EmployeeListState employeeListState) {
    if (state.keyWord != null) {
      List<EmployeesModel> employees = [];
      _employeeListCubit.state.employees?.forEach((employee) {
        if (employee.name
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhere((dept) => dept.id == employee.departmentId);

          employees.add(EmployeesModel.createEmployeesModel(
              employee, employeeDepartment));
        }
      });
      emit(state.copyWith(employees: employees));
    } else {
      List<EmployeesModel> employees =
          _employeeListCubit.state.employees!.map((employee) {
        EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
            .state.employeesDepartments
            ?.firstWhere((dept) => dept.id == employee.departmentId);

        return EmployeesModel.createEmployeesModel(
            employee, employeeDepartment);
      }).toList();

      emit(state.copyWith(employees: employees));
    }
  }

  @override
  Future<void> close() {
    _employeeListSubscription.cancel();
    return super.close();
  }
}
