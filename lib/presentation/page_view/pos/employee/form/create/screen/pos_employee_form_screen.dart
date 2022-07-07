import 'package:flutter/material.dart';
import '../widget/pos_employee_form_widget.dart';

class PosEmployeeFormScreen extends StatelessWidget {
  const PosEmployeeFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PosEmployeeFormWidget();

    // BlocProvider(
    //   create: ((context) => EmployeeFormCreateCubit(
    //       employeeListCubit: getIt<EmployeeListCubit>())),
    //   child: const PosEmployeeFormWidget(),
    // );
  }
}
