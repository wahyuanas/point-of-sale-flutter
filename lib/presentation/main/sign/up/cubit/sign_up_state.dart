part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState(
      {required StateStatus<FailureExceptions, Account?> status,
      required SignUp signUp,
      required bool failOrUnit}) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
      status: const StateStatus.initial(),
      signUp: SignUp.empty(),
      failOrUnit: false);
}
