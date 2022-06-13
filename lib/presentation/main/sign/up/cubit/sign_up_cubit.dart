import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/object_value/sign_up/account_object_value.dart';
import 'package:pos/domain/account/object_value/sign_up/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final IAccountService accountService;
  @override
  SignUpCubit({required this.accountService}) : super(SignUpState.initial());

  void onCompanyNameChanged(String v) {
    emit(state.copyWith(
      signUp: state.signUp.copyWith(companyName: SignUpCompanyName(v)),
    ));
  }

  void onAddressChanged(String v) {
    emit(state.copyWith(
      signUp: state.signUp.copyWith(address: SignUpAddress(v)),
    ));
  }

  void onPhoneNumberChanged(String v) {
    emit(state.copyWith(
      signUp: state.signUp.copyWith(phoneNumber: SignUpPhoneNumber(v)),
    ));
  }

  void onEmailChanged(String v) {
    emit(state.copyWith(
      signUp: state.signUp.copyWith(email: SignUpEmail(v)),
    ));
  }

  void onOutletsNumberChanged(String v) {
    emit(state.copyWith(
      signUp: state.signUp.copyWith(outletsNumber: SignUpOutletsNumber(v)),
    ));
  }

  void onBusinessTypeChanged(String v) {
    emit(state.copyWith(
      signUp: state.signUp.copyWith(businessType: SignUpBusinessType(v)),
    ));
  }

  void onMainBusinessTypeChanged(String? v) {
    emit(state.copyWith(
      signUp:
          state.signUp.copyWith(mainBusinessType: SignUpMainBusinessType(v)),
    ));
  }

  void onCoreBusinessTypeChanged(String? v) {
    emit(state.copyWith(
      signUp:
          state.signUp.copyWith(coreBusinessType: SignUpCoreBusinessType(v)),
    ));
  }

  onSignUpSubmit() async {
    if (state.signUp.failureOption.isSome()) {
      emit(state.copyWith(failOrUnit: !state.failOrUnit));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(seconds: 2));
      failureOrSuccess.fold(
          (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
          (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
    }
  }
}
