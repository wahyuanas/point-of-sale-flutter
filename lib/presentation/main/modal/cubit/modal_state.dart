part of 'modal_cubit.dart';

@freezed
class ModalState with _$ModalState {
  const factory ModalState(
      {required String? content,
      required BuildContext? modalContext,
      required OnModalState? onModalState}) = _ModalState;

  factory ModalState.initial() =>
      const ModalState(content: null, modalContext: null, onModalState: null);
}
