import 'package:dartz/dartz.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/object_value/account_object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';

abstract class IAccountService {
  Future<Either<FailureExceptions, Account>> signUp(SignUp cmd);
}
