import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/employee_department/form/cubit/employees_department_form_create_cubit.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';

import '../widget/pos_employee_department_form_widget.dart';

class PosEmployeeDepartmentFormScreen extends StatelessWidget {
  const PosEmployeeDepartmentFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => EmployeeDepartmentFormCreateCubit(
          employeeDepartmentListCubit: getIt<EmployeeDepartmentListCubit>())),
      child: const PosEmployeeDepartmentFormWidget(),
    );
  }
}
