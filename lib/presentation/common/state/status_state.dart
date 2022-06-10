import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_state.freezed.dart';

@freezed
class StatusState<T, E> with _$StatusState<T, E> {
  const factory StatusState.initial() = _Initial<T, E>;

  const factory StatusState.success({required E data}) = _Success<T, E>;

  const factory StatusState.loading() = _Loading<T, E>;

  const factory StatusState.failure({required T failure}) = _Failure<T, E>;
}
