import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_route_state.freezed.dart';

@freezed
class OnRouteState<T> with _$OnRouteState<T> {
  const factory OnRouteState.signUp({required T r}) = _SignUp<T>;
  const factory OnRouteState.signUpNotif({required T r}) = _SignUpNotif<T>;
  const factory OnRouteState.postCatalogList({required T r}) =
      _PostCatalogList<T>;
  const factory OnRouteState.postCatalogform({required T r}) =
      _PostCatalogform<T>;
  const factory OnRouteState.purchase({required T r}) = _Purchase<T>;
  const factory OnRouteState.posCatalogItemDetail({required T r}) =
      _PosCatalogItemDetail<T>;
  const factory OnRouteState.posCustomerList({required T r}) =
      _PostCustomerList<T>;
  const factory OnRouteState.posVehicleList({required T r}) =
      _PosVehicleList<T>;
}
