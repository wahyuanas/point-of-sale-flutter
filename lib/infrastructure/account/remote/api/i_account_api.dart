import '../dto/sign_in/dto_sign_in.dart';
import '../dto/sign_up/dto_sign_up.dart';

abstract class IAccountApi {
  Future<DtoSignUpResponse> signUp(DtoSignUpRequest dto);
  Future<DtoSignInResponse> signIn(DtoSignInRequest dto);
}
