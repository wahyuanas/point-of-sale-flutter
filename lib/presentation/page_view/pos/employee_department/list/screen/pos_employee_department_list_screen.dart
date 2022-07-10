import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/common/cubit/intro/intro_cubit.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_employee_department_list_cubit.dart';
import '../widget/pos_emplyee_department_list_widget.dart';

class PosEmployeeDepartmentListScreen extends StatelessWidget {
  const PosEmployeeDepartmentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onF =
        BlocProvider.of<IntroCubit>(context).state.posEmployeeDepartmentList ==
                false
            ? false
            : true;
    return BlocProvider(
        create: ((context) => PosEmployeeDepartmentListCubit(
              employeeDepartmentListCubit: getIt<EmployeeDepartmentListCubit>(),
            )..onStarted()),
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
                  child: const PosEmployeeDepartmentListWidget())),
        ));
  }
}
