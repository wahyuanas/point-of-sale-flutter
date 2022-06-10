import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/account/object_value/account_object_value.dart';
import 'package:pos/domain/account/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/status_state.dart';

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

  onSignUp() {
    emit(state.copyWith(status: const StatusState.loading()));
  }

  onSignUpSubmit() {
    emit(state.copyWith(failOrUnit: !state.failOrUnit));
  }
}
