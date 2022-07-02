import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_on_route_state.freezed.dart';

@freezed
class PosOnRouteState<T> with _$PosOnRouteState<T> {
  const factory PosOnRouteState.postCatalogList({required T r}) =
      _PostCatalogList<T>;
  const factory PosOnRouteState.postCatalogform({required T r}) =
      _PostCatalogform<T>;
  const factory PosOnRouteState.purchase({required T r}) = _Purchase<T>;
  const factory PosOnRouteState.posCatalogItemDetail({required T r}) =
      _PosCatalogItemDetail<T>;
  const factory PosOnRouteState.postCustomerList({required T r}) =
      _PostCustomerList<T>;
}
