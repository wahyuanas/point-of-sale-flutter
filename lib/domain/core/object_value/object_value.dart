import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/core/object_value/common_interfaces.dart';
import 'package:pos/domain/core/object_value/errors.dart';
import 'package:pos/domain/core/object_value/failures.dart';

@immutable
abstract class ObjectValue<T> implements IValidatable {
  const ObjectValue();
  Either<ObjectValueFailure, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedObjectValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ObjectValueFailure, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ObjectValue<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
