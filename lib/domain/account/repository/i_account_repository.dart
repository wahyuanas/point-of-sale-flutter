import 'package:dartz/dartz.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/model/account_auth.dart';
import 'package:pos/domain/account/object_value/sign_in/account_object_value.dart';
import 'package:pos/domain/account/object_value/sign_up/account_object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';

abstract class IAccountRepository {
  Future<Either<FailureExceptions, Account?>> signUp(SignUp cmd);
  Future<Either<FailureExceptions, AccountAuth>> signIn(SignIn cmd);
}
