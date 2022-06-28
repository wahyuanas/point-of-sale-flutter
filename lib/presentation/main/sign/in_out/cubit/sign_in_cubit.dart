import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/account/model/account_auth.dart';
import 'package:pos/domain/account/object_value/sign_in/account_object_value.dart';
import 'package:pos/domain/account/object_value/sign_in/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/auth/cubit/auth_cubit.dart';
import 'package:pos/presentation/main/auth/model/auth.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  final IAccountService accountService;
  final AuthCubit authCubit;
  @override
  SignInCubit({required this.accountService, required this.authCubit})
      : super(SignInState.initial());

  void onEmailOrPhoneNumberChanged(String v) {
    emit(state.copyWith(
      signIn: state.signIn
          .copyWith(emailOrPhoneNumber: SignInEmailOrPhoneNumber(v)),
    ));
  }

  void onPasswordChanged(String v) {
    emit(state.copyWith(
      signIn: state.signIn.copyWith(password: SignInPassword(v)),
    ));
  }

  onSignInSubmit() async {
    if (state.signIn.failureOption.isSome()) {
      emit(state.copyWith(failOrUnit: !state.failOrUnit));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      final failureOrSuccess = await accountService.signIn(state.signIn);
      await Future.delayed(const Duration(seconds: 2));
      failureOrSuccess.fold(
          (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
          (r) async {
        emit(state.copyWith(status: StateStatus.success(data: r)));
        await Future.delayed(const Duration(milliseconds: 500));
        authCubit.onAuthReload(Auth.fromSignIn(r));
      });
    }
  }
}
