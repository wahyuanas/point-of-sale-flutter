part of 'introduction_cubit.dart';

@freezed
class IntroductionState with _$IntroductionState {
  const factory IntroductionState(
      {required OnIntroductionState introductionState}) = _IntroductionState;

  factory IntroductionState.initial() =>
      const IntroductionState(introductionState: OnIntroductionState.unDone());
  factory IntroductionState.reLoad(OnIntroductionState introductionState) =>
      IntroductionState(
        introductionState: introductionState,
      );

  factory IntroductionState.fromJson(Map<String, dynamic> json) =>
      _$IntroductionStateFromJson(json);
}
