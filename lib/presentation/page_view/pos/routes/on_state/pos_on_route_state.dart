import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_on_route_state.freezed.dart';

@freezed
class PosOnRouteState<T> with _$PosOnRouteState<T> {
  const factory PosOnRouteState.posCatalogList({required T r}) =
      _PosCatalogList<T>;
  const factory PosOnRouteState.posCatalogform({required T r}) =
      _PosCatalogform<T>;
  const factory PosOnRouteState.purchase({required T r}) = _Purchase<T>;
  const factory PosOnRouteState.posCatalogItemDetail({required T r}) =
      _PosCatalogItemDetail<T>;
  const factory PosOnRouteState.posCustomerList({required T r}) =
      _PosCustomerList<T>;
  const factory PosOnRouteState.posCustomerForm({required T r}) =
      _PosCustomerForm<T>;
}
