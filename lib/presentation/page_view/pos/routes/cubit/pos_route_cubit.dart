import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../on_state/pos_on_route_state.dart';

part 'pos_route_state.dart';
part 'pos_route_cubit.freezed.dart';

class PosRouteCubit extends Cubit<PosRouteState> {
  PosRouteCubit() : super(PosRouteState.initial());

  void onRoute(PosOnRouteState<String> onRoute, Object? args) {
    emit(state.copyWith(onRoute: onRoute, route: !state.route!, args: args));
  }
}
