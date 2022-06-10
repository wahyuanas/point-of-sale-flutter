import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_status.freezed.dart';

@freezed
class StateStatus<T, E> with _$StateStatus<T, E> {
  const factory StateStatus.initial() = _Initial<T, E>;

  const factory StateStatus.success({required E data}) = _Success<T, E>;

  const factory StateStatus.loading() = _Loading<T, E>;

  const factory StateStatus.failure({required T failure}) = _Failure<T, E>;
}
