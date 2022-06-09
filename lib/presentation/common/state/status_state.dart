import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_state.freezed.dart';

@freezed
class StatusState<T> with _$StatusState<T> {
  const factory StatusState.initial() = _Initial<T>;

  const factory StatusState.success() = _Success<T>;

  const factory StatusState.loading() = _Loading<T>;

  const factory StatusState.failure({required T failure}) = _Failure<T>;
}
