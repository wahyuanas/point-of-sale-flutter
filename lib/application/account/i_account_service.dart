import 'package:dartz/dartz.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';

abstract class IAccountServise {
  Future<Either<FailureExceptions, Account>> signUp();
}
