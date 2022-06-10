import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_route_state.freezed.dart';

@freezed
class OnRouteState with _$OnRouteState {
  const factory OnRouteState.signUp() = _SignUp;
}
