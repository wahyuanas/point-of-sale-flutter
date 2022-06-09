part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required StatusState<FailureExceptions> status,
    required Auth? auth,
  }) = _SignInState;

  factory SignInState.initial() =>
      const SignInState(status: StatusState.initial(), auth: null);
}
