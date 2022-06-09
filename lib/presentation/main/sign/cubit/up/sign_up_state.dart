part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required StatusState<FailureExceptions> status,
    required Auth? auth,
  }) = _SignUpState;

  factory SignUpState.initial() =>
      const SignUpState(status: StatusState.initial(), auth: null);
}
