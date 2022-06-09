import '../dto/dto_account.dart';

abstract class IAccountApi {
  Future<DtoAccountResponse> signUp(DtoAccountRequest dto);
}
