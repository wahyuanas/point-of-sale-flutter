part of 'route_cubit.dart';

@freezed
class RouteState with _$RouteState {
  const factory RouteState(
      {required OnRouteState<String>? onRoute,
      required Object? args,
      required bool? route}) = _RouteState;

  factory RouteState.initial() =>
      const RouteState(onRoute: null, args: null, route: false);
}
