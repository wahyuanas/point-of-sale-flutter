import 'package:dartz/dartz.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/object_value/account_object_value.dart';
import 'package:pos/domain/account/repository/i_account_repository.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';

class AccountService implements IAccountService {
  final IAccountRepository accountRepository;
  AccountService({required this.accountRepository});
  @override
  Future<Either<FailureExceptions, Account>> signUp(SignUp cmd) async {
    return await accountRepository.signUp(cmd);
  }
}
