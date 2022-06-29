part of 'pos_catalog_item_transition_app_bar_cubit.dart';

@freezed
class PosCatalogItemTransitionAppBarState
    with _$PosCatalogItemTransitionAppBarState {
  const factory PosCatalogItemTransitionAppBarState({
    required bool builder,
    required bool builder1,
    required bool builder2,
    required double? heightImage,
    required double? heightStatusBar,
    required double? heightAppBar,
    required double? heightIconBackArrow,
  }) = _PosCatalogItemTransitionAppBarState;

  factory PosCatalogItemTransitionAppBarState.initial() =>
      const PosCatalogItemTransitionAppBarState(
          builder: false,
          builder1: false,
          builder2: false,
          heightImage: null,
          heightAppBar: null,
          heightStatusBar: null,
          heightIconBackArrow: null);
}
