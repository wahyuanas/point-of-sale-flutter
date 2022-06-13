part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState(
      {required StateStatus<FailureExceptions, AccountAuth> status,
      required SignIn signIn,
      required bool failOrUnit}) = _SignInState;

  factory SignInState.initial() => SignInState(
      status: const StateStatus.initial(),
      signIn: SignIn.empty(),
      failOrUnit: false);
}
