import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../on_state/on_route_state.dart';

part 'route_state.dart';
part 'route_cubit.freezed.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit() : super(RouteState.initial());

  void onRoute(OnRouteState<String> onRoute, Object? args) {
    emit(state.copyWith(onRoute: onRoute, route: !state.route!, args: args));
  }
}
