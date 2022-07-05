import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/employee_department/entity/employees_department.dart';
import 'package:pos/domain/employee_department/object_value/employee_department_object_value.dart';
import 'package:pos/domain/employee_department/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:uuid/uuid.dart';

part 'employees_department_form_create_state.dart';
part 'employees_department_form_create_cubit.freezed.dart';

class EmployeeDepartmentFormCreateCubit
    extends Cubit<EmployeeDepartmentFormCreateState> {
  final EmployeeDepartmentListCubit employeeDepartmentListCubit;
  @override
  EmployeeDepartmentFormCreateCubit({required this.employeeDepartmentListCubit})
      : _employeeDepartmentListCubit = employeeDepartmentListCubit,
        super(EmployeeDepartmentFormCreateState.initial());

  final EmployeeDepartmentListCubit _employeeDepartmentListCubit;

  void onCreateEmployeeDepartmentCodeChanged(String v) {
    emit(state.copyWith(
      createEmployeeDepartment: state.createEmployeeDepartment
          .copyWith(code: CreateEmployeeDepartmentCode(v)),
    ));
  }

  void onCreateEmployeeDepartmentNameChanged(String v) {
    emit(state.copyWith(
      createEmployeeDepartment: state.createEmployeeDepartment
          .copyWith(name: CreateEmployeeDepartmentName(v)),
    ));
  }

  onCreate() async {
    if (state.createEmployeeDepartment.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      final id = _employeeDepartmentListCubit.state.employeesDepartments == null
          ? 1
          : _employeeDepartmentListCubit.state.employeesDepartments!.last.id +
              1;
      EmployeesDepartment r = EmployeesDepartment.createEmployeeDepartment(
          id, state.createEmployeeDepartment);
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _employeeDepartmentListCubit.onAddEmployeeDepartment(r);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
    }
  }

  onInitial() {
    emit(EmployeeDepartmentFormCreateState.initial());
  }
}
