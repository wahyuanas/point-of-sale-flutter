part of 'pos_route_cubit.dart';

@freezed
class PosRouteState with _$PosRouteState {
  const factory PosRouteState(
      {required PosOnRouteState<String>? onRoute,
      required Object? args,
      required bool? route}) = _PosRouteState;

  factory PosRouteState.initial() =>
      const PosRouteState(onRoute: null, args: null, route: false);
}
