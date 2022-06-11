import 'package:pos/domain/core/object_value/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedObjectValueError extends Error {
  final ObjectValueFailure objectValueFailure;

  UnexpectedObjectValueError(this.objectValueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a objectValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $objectValueFailure');
  }
}
