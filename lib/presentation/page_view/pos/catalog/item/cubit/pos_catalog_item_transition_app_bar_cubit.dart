import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_catalog_item_transition_app_bar_state.dart';
part 'pos_catalog_item_transition_app_bar_cubit.freezed.dart';

class PosCatalogItemTransitionAppBarCubit
    extends Cubit<PosCatalogItemTransitionAppBarState> {
  final ScrollController scrollController;
  PosCatalogItemTransitionAppBarCubit({required this.scrollController})
      : _scrollController = scrollController,
        super(PosCatalogItemTransitionAppBarState.initial()) {
    _scrollController.addListener(() {
      onScroll();
    });
  }
  final ScrollController _scrollController;

  onScroll() {
    debugPrint(
        "${_scrollController.position.pixels} ${state.heightImage} ${state.heightStatusBar} ${state.heightIconBackArrow}");

    if (_scrollController.position.pixels >=
        ((state.heightImage ?? 0) - (state.heightStatusBar ?? 0))) {
      if (state.builder == false) {
        emit(state.copyWith(builder: true));
      }
    } else {
      if (state.builder == true) {
        emit(state.copyWith(builder: false));
      }
    }

    if (_scrollController.position.pixels >=
        (state.heightImage ?? 0) - ((state.heightStatusBar ?? 0) / 2)) {
      if (state.builder1 == false) {
        emit(state.copyWith(builder1: true));
      }
    } else {
      if (state.builder1 == true) {
        emit(state.copyWith(builder1: false));
      }
    }

    if (_scrollController.position.pixels >=
        (state.heightImage ?? 0) -
            ((state.heightStatusBar ?? 0) +
                ((state.heightAppBar ?? 0) -
                    (state.heightIconBackArrow ?? 0)))) {
      if (state.builder2 == false) {
        emit(state.copyWith(builder2: true));
      }
    } else {
      if (state.builder2 == true) {
        emit(state.copyWith(builder2: false));
      }
    }
  }

  onRestarted(double heightImage, double heightStatusBar, double heightAppBar,
      double heightIconBackArrow) {
    emit(state.copyWith(
        heightImage: heightImage,
        heightAppBar: heightAppBar,
        heightStatusBar: heightStatusBar,
        heightIconBackArrow: heightIconBackArrow));
  }
}
