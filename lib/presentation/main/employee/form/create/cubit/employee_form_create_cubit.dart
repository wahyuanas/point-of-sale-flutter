import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/employee/entity/employees.dart';
import 'package:pos/domain/employee/object_value/employee_object_value.dart';
import 'package:pos/domain/employee/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee_department/model/employees_department_model.dart';
import 'package:uuid/uuid.dart';

part 'employee_form_create_state.dart';
part 'employee_form_create_cubit.freezed.dart';

class EmployeeFormCreateCubit extends Cubit<EmployeeFormCreateState> {
  final EmployeeListCubit employeeListCubit;
  @override
  EmployeeFormCreateCubit({required this.employeeListCubit})
      : _employeeListCubit = employeeListCubit,
        super(EmployeeFormCreateState.initial());

  final EmployeeListCubit _employeeListCubit;

  void onCreateEmployeeCodeChanged(String v) {
    emit(state.copyWith(
      createEmployee:
          state.createEmployee.copyWith(code: CreateEmployeeCode(v)),
    ));
  }

  void onCreateEmployeeNameChanged(String v) {
    emit(state.copyWith(
      createEmployee:
          state.createEmployee.copyWith(name: CreateEmployeeName(v)),
    ));
  }

  void onCreateEmployeeDepartmentChanged(EmployeesDepartmentModel? v) {
    emit(state.copyWith(
      createEmployee: state.createEmployee
          .copyWith(department: CreateEmployeeDepartment(v)),
    ));
  }

  onCreate() async {
    if (state.createEmployee.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      final id = _employeeListCubit.state.employees == null
          ? 1
          : _employeeListCubit.state.employees!.last.id + 1;
      Employees r = Employees.createEmployee(id, state.createEmployee);
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _employeeListCubit.onAddEmployee(r);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
    }
  }

  onInitial() {
    emit(EmployeeFormCreateState.initial());
  }
}
