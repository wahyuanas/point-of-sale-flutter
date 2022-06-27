part of 'intro_cubit.dart';

@freezed
class IntroState with _$IntroState {
  const factory IntroState({required bool posCatalogList}) = _IntroState;

  factory IntroState.initial() => const IntroState(posCatalogList: false);

  factory IntroState.fromJson(Map<String, dynamic> json) =>
      _$IntroStateFromJson(json);
}
