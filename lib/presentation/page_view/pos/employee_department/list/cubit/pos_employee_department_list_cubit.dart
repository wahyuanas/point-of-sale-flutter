import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:collection/collection.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';

part 'pos_employee_department_list_state.dart';
part 'pos_employee_department_list_cubit.freezed.dart';

class PosEmployeeDepartmentListCubit
    extends Cubit<PosEmployeeDepartmentListState> {
  final EmployeeDepartmentListCubit employeeDepartmentListCubit;
  PosEmployeeDepartmentListCubit({
    required this.employeeDepartmentListCubit,
  })  : _employeeDepartmentListCubit = employeeDepartmentListCubit,
        super(PosEmployeeDepartmentListState.initial()) {
    _employeeListSubscription =
        _employeeDepartmentListCubit.stream.listen((employeeListState) {
      //onEmployeeDepartmentChannged(employeeDepartmentListState);
    });
  }
  final EmployeeDepartmentListCubit _employeeDepartmentListCubit;
  late StreamSubscription _employeeListSubscription;

  onStarted() {
    List<EmployeesDepartmentModel>? employeeDepartmentModels =
        _employeeDepartmentListCubit.state.employeesDepartments
            ?.map((department) {
      return EmployeesDepartmentModel.createEmployeesDepartmentModel(
          department);
    }).toList();

    emit(state.copyWith(employeesDepartments: employeeDepartmentModels));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<EmployeesDepartmentModel>? employeesDepartmentModels = [];
      _employeeDepartmentListCubit.state.employeesDepartments
          ?.forEach((employeesDepartment) {
        if (employeesDepartment.name.toLowerCase().contains(v.toLowerCase())) {
          EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhereOrNull((dept) => dept.id == employeesDepartment.id);

          employeesDepartmentModels?.add(
              EmployeesDepartmentModel.createEmployeesDepartmentModel(
                  employeeDepartment));
        }
      });
      if (employeesDepartmentModels.isEmpty) {
        employeesDepartmentModels = null;
      }
      emit(state.copyWith(
          employeesDepartments: employeesDepartmentModels, keyWord: v));
    } else {
      List<EmployeesDepartmentModel>? employeeDepartmentModels =
          _employeeDepartmentListCubit.state.employeesDepartments
              ?.map((department) {
        return EmployeesDepartmentModel.createEmployeesDepartmentModel(
            department);
      }).toList();

      emit(state.copyWith(
          employeesDepartments: employeeDepartmentModels, keyWord: null));
    }
  }

  onReset() {
    List<EmployeesDepartmentModel>? employeeDepartmentModels =
        _employeeDepartmentListCubit.state.employeesDepartments
            ?.map((department) {
      return EmployeesDepartmentModel.createEmployeesDepartmentModel(
          department);
    }).toList();

    emit(state.copyWith(
        employeesDepartments: employeeDepartmentModels, keyWord: null));
  }

  onEmployeeChannged(EmployeeListState employeeListState) {
    if (state.keyWord != null) {
      List<EmployeesDepartmentModel>? employeesDepartmentModels = [];
      _employeeDepartmentListCubit.state.employeesDepartments
          ?.forEach((employeesDepartment) {
        if (employeesDepartment.name
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          EmployeesDepartment? employeeDepartment = _employeeDepartmentListCubit
              .state.employeesDepartments
              ?.firstWhereOrNull((dept) => dept.id == employeesDepartment.id);

          employeesDepartmentModels?.add(
              EmployeesDepartmentModel.createEmployeesDepartmentModel(
                  employeeDepartment));
        }
      });
      if (employeesDepartmentModels.isEmpty) {
        employeesDepartmentModels = null;
      }
      emit(state.copyWith(employeesDepartments: employeesDepartmentModels));
    } else {
      List<EmployeesDepartmentModel>? employeeDepartmentModels =
          _employeeDepartmentListCubit.state.employeesDepartments
              ?.map((department) {
        return EmployeesDepartmentModel.createEmployeesDepartmentModel(
            department);
      }).toList();

      emit(state.copyWith(employeesDepartments: employeeDepartmentModels));
    }
  }

  @override
  Future<void> close() {
    _employeeListSubscription.cancel();
    return super.close();
  }
}
