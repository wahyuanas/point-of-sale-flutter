import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'intro_state.dart';
part 'intro_cubit.freezed.dart';
part 'intro_cubit.g.dart';

class IntroCubit extends HydratedCubit<IntroState> {
  IntroCubit() : super(IntroState.initial());

  onReload(bool posCatalogList) {
    state.copyWith(posCatalogList: posCatalogList);
  }

  @override
  IntroState fromJson(Map<String, dynamic> json) {
    debugPrint("INTRO CUBIT FROM JSON");
    return IntroState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(IntroState state) {
    debugPrint("INTRO CUBIT TO JSON");
    return state.toJson();
  }
}
