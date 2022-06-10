import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';
import 'package:pos/presentation/main/sign/up/widget/sign_up_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpCubit(accountService: getIt<IAccountService>()),
      child: const SignUpWidget(),
    );
  }
}
