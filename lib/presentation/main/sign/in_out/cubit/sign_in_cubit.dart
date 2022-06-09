import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/application/account/account_service.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/status_state.dart';
import 'package:pos/presentation/main/auth/cubit/auth_cubit.dart';
import 'package:pos/presentation/main/auth/model/auth.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  final AccountService accountService;
  final AuthCubit authCubit;
  @override
  SignInCubit({required this.accountService, required this.authCubit})
      : super(SignInState.initial());

  onSignIn() {
    emit(state.copyWith(status: const StatusState.loading()));
  }
}
