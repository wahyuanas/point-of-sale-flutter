import 'package:dartz/dartz.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/model/account_auth.dart';
import 'package:pos/domain/account/object_value/sign_in/account_object_value.dart';
import 'package:pos/domain/account/object_value/sign_up/account_object_value.dart';
import 'package:pos/domain/account/repository/i_account_repository.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/infrastructure/account/remote/api/i_account_api.dart';
import 'package:pos/infrastructure/account/remote/dto/sign_up/dto_sign_up.dart';

import '../remote/dto/sign_in/dto_sign_in.dart';

class AccountRepository implements IAccountRepository {
  final IAccountApi accountApi;
  AccountRepository({required this.accountApi});
  @override
  Future<Either<FailureExceptions, Account?>> signUp(SignUp cmd) async {
    try {
      final dtoR = await accountApi.signUp(DtoSignUpRequest.fromDomain(cmd));
      final a = dtoR.toDomain();
      return right(a);
    } catch (e) {
      return left(FailureExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<FailureExceptions, AccountAuth>> signIn(SignIn cmd) async {
    try {
      final dtoR = await accountApi.signIn(DtoSignInRequest.fromDomain(cmd));
      final a = dtoR.toDomain();
      return right(a);
    } catch (e) {
      return left(FailureExceptions.getDioException(e));
    }
  }
}
