import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_introduction_state.freezed.dart';
part 'on_introduction_state.g.dart';

@freezed
class OnIntroductionState with _$OnIntroductionState {
  const factory OnIntroductionState.unDone() = UnDone;
  const factory OnIntroductionState.done() = Done;
  factory OnIntroductionState.fromJson(Map<String, dynamic> json) =>
      _$OnIntroductionStateFromJson(json);
}
