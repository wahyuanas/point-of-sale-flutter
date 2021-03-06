import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:collection/collection.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';

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
    EmployeesDepartmentModel? employeesDepartmentModel;
    List<EmployeesModel>? employeeModels =
        _employeeListCubit.state.employees?.map((employee) {
      EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
          .state.employeesDepartments
          ?.firstWhereOrNull((dept) => dept.id == employee.departmentId);
      if (employeeDepartment != null) {
        employeesDepartmentModel =
            EmployeesDepartmentModel.createEmployeesDepartmentModel(
                employeeDepartment);
      }
      return EmployeesModel.createEmployeesModel(
          employee, employeesDepartmentModel);
    }).toList();

    emit(state.copyWith(employees: employeeModels));
  }

  onSearchKeyChanged(String v) {
    EmployeesDepartmentModel? employeesDepartmentModel;
    if (v.isNotEmpty) {
      List<EmployeesModel>? employeeModels = [];
      _employeeListCubit.state.employees?.forEach((employee) {
        if (employee.name.toLowerCase().contains(v.toLowerCase())) {
          EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhereOrNull((dept) => dept.id == employee.departmentId);
          if (employeeDepartment != null) {
            employeesDepartmentModel =
                EmployeesDepartmentModel.createEmployeesDepartmentModel(
                    employeeDepartment);
          }
          employeeModels?.add(EmployeesModel.createEmployeesModel(
              employee, employeesDepartmentModel));
        }
      });
      if (employeeModels.isEmpty) {
        employeeModels = null;
      }
      emit(state.copyWith(employees: employeeModels, keyWord: v));
    } else {
      List<EmployeesModel>? employeeModels =
          _employeeListCubit.state.employees?.map((employee) {
        EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
            .state.employeesDepartments
            ?.firstWhereOrNull((dept) => dept.id == employee.departmentId);
        if (employeeDepartment != null) {
          employeesDepartmentModel =
              EmployeesDepartmentModel.createEmployeesDepartmentModel(
                  employeeDepartment);
        }
        return EmployeesModel.createEmployeesModel(
            employee, employeesDepartmentModel);
      }).toList();

      emit(state.copyWith(employees: employeeModels, keyWord: null));
    }
  }

  onReset() {
    EmployeesDepartmentModel? employeesDepartmentModel;
    List<EmployeesModel>? employeeModels =
        _employeeListCubit.state.employees?.map((employee) {
      EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
          .state.employeesDepartments
          ?.firstWhereOrNull((dept) => dept.id == employee.departmentId);
      if (employeeDepartment != null) {
        employeesDepartmentModel =
            EmployeesDepartmentModel.createEmployeesDepartmentModel(
                employeeDepartment);
      }
      return EmployeesModel.createEmployeesModel(
          employee, employeesDepartmentModel);
    }).toList();

    emit(state.copyWith(employees: employeeModels, keyWord: null));
  }

  onEmployeeChannged(EmployeeListState employeeListState) {
    EmployeesDepartmentModel? employeesDepartmentModel;
    if (state.keyWord != null) {
      List<EmployeesModel>? employeeModels = [];
      _employeeListCubit.state.employees?.forEach((employee) {
        if (employee.name
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhereOrNull((dept) => dept.id == employee.departmentId);
          if (employeeDepartment != null) {
            employeesDepartmentModel =
                EmployeesDepartmentModel.createEmployeesDepartmentModel(
                    employeeDepartment);
          }
          employeeModels?.add(EmployeesModel.createEmployeesModel(
              employee, employeesDepartmentModel));
        }
      });
      if (employeeModels.isEmpty) {
        employeeModels = null;
      }
      emit(state.copyWith(employees: employeeModels));
    } else {
      List<EmployeesModel>? employeeModels =
          _employeeListCubit.state.employees?.map((employee) {
        EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
            .state.employeesDepartments
            ?.firstWhereOrNull((dept) => dept.id == employee.departmentId);
        if (employeeDepartment != null) {
          employeesDepartmentModel =
              EmployeesDepartmentModel.createEmployeesDepartmentModel(
                  employeeDepartment);
        }
        return EmployeesModel.createEmployeesModel(
            employee, employeesDepartmentModel);
      }).toList();

      emit(state.copyWith(employees: employeeModels));
    }
  }

  @override
  Future<void> close() {
    _employeeListSubscription.cancel();
    return super.close();
  }
}
