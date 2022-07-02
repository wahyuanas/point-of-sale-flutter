import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/customer/form/create/cubit/pos_customer_form_create_cubit.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';

import '../widget/pos_customer_form_widget.dart';

class PosCustomerFormScreen extends StatelessWidget {
  const PosCustomerFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => PosCustomerFormCreateCubit(
          customerListCubit: getIt<CustomerListCubit>())),
      child: const PosCustomerFormWidget(),
    );
  }
}
