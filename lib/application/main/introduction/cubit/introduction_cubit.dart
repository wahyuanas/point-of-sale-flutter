import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../on_state/on_introduction_state.dart';

part 'introduction_state.dart';
part 'introduction_cubit.g.dart';
part 'introduction_cubit.freezed.dart';

class IntroductionCubit extends HydratedCubit<IntroductionState> {
  IntroductionCubit() : super(IntroductionState.initial());

  void onReload() {
    emit(state.copyWith(introductionState: const OnIntroductionState.done()));
  }

  @override
  IntroductionState fromJson(Map<String, dynamic> json) {
    debugPrint("INTRODUCTION CUBIT FROM JSON");
    return IntroductionState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(IntroductionState state) {
    return state.toJson();
  }
}
