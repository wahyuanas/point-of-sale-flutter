import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_employee_list_cubit.dart';
import '../widget/pos_emplyee_list_widget.dart';

class PosEmployeeListScreen extends StatelessWidget {
  const PosEmployeeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onF = false;
    return BlocProvider(
        create: ((context) => PosEmployeeListCubit(
            employeeListCubit: getIt<EmployeeListCubit>(),
            employeeDepartmentListCubit: getIt<EmployeeDepartmentListCubit>())
          ..onStarted()),
        child: ShowCaseWidget(
          onFinish: () => onF = true,
          builder: Builder(
              builder: (context) => WillPopScope(
                  onWillPop: (() async {
                    if (onF == false) {
                      onF = true;
                      ShowCaseWidget.of(context).dismiss();
                      return false;
                    }
                    return true;
                  }),
                  child: const PosEmployeeListWidget())),
        ));
  }
}
