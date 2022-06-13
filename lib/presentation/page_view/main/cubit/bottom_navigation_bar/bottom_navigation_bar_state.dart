part of 'bottom_navigation_bar_cubit.dart';

@freezed
class BottomNavigationBarState with _$BottomNavigationBarState {
  const factory BottomNavigationBarState({
    required int? currentTabItem,
    required bool every,
    required String? data,
  }) = _BottomNavigationBarState;

  factory BottomNavigationBarState.initial() => const BottomNavigationBarState(
      currentTabItem: 0, every: false, data: null);
}
