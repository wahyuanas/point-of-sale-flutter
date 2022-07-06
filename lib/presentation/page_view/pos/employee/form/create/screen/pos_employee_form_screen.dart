import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';
import 'package:pos/presentation/main/employee/form/create/cubit/employee_form_create_cubit.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';

import '../widget/pos_employee_form_widget.dart';

class PosEmployeeFormScreen extends StatelessWidget {
  const PosEmployeeFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => EmployeeFormCreateCubit(
          employeeListCubit: getIt<EmployeeListCubit>())),
      child: const PosEmployeeFormWidget(),
    );
  }
}
