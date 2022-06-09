import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_modal_state.freezed.dart';

@freezed
class OnModalState with _$OnModalState {
  const factory OnModalState.push() = _Push;
  const factory OnModalState.pop() = _Pop;
  const factory OnModalState.failure() = _Failure;
}
