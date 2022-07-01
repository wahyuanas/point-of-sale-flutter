import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';

import '../cubit/pos_customer_list_cubit.dart';
import '../widget/pos_customer_list_widget.dart';

class PosCustomerListScreen extends StatelessWidget {
  const PosCustomerListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) =>
          PosCustomerListCubit(customerListCubit: getIt<CustomerListCubit>())
            ..onStarted()),
      child: Intro(
        padding: EdgeInsets.zero,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        maskColor: const Color.fromRGBO(0, 0, 0, .6),
        buttonTextBuilder: (order) => order == 1 ? 'OK' : 'Next',
        child: const PosCustomerListWidget(),
      ),
    );
  }
}
