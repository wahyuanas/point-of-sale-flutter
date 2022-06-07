import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_route_state.freezed.dart';

@freezed
class OnRouteState with _$OnRouteState {
  const factory OnRouteState.cart() = _Cart;
  const factory OnRouteState.itemDetail() = _ItemDetail;
  const factory OnRouteState.categoryItemList() = _CategoryItemList;
  const factory OnRouteState.searchFilterPickUp() = _SearchFilterPickUp;
  const factory OnRouteState.login() = _Login;
}
