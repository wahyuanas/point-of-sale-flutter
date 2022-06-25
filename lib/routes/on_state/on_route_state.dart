import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_route_state.freezed.dart';

@freezed
class OnRouteState with _$OnRouteState {
  const factory OnRouteState.signUp({required String r}) = _SignUp;
  const factory OnRouteState.signUpNotif({required String r}) = _SignUpNotif;
  const factory OnRouteState.postCatalogList({required String r}) =
      _PostCatalogList;
  const factory OnRouteState.postCatalogform({required String r}) =
      _PostCatalogList;
}
