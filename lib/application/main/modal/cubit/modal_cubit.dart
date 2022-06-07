import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../on_state/on_modal_state.dart';

part 'modal_state.dart';
part 'modal_cubit.freezed.dart';

class ModalCubit extends Cubit<ModalState> {
  ModalCubit() : super(ModalState.initial());

  void onModalStarted(BuildContext context) {
    emit(state.copyWith(modalContext: context));
  }

  void onModalContent(String? content) {
    emit(state.copyWith(content: content));
  }

  void onModalPush(String? content) {
    emit(state.copyWith(
        content: content, onModalState: const OnModalState.push()));
  }

  void onModalPop() {
    emit(state.copyWith(content: null, onModalState: const OnModalState.pop()));
  }

  void onModalFailure(String content) {
    emit(state.copyWith(
        content: content, onModalState: const OnModalState.failure()));
  }
}
