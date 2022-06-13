import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/model/account_auth.dart';
import 'package:pos/domain/account/object_value/sign_in/account_object_value.dart';

import '../core/dto_account.dart';

part 'dto_sign_in.freezed.dart';
part 'dto_sign_in.g.dart';

@freezed
class DtoSignInRequest with _$DtoSignInRequest {
  const factory DtoSignInRequest({
    required String emailOrPhoneNumber,
    required String password,
  }) = _DtoSignInRequest;

  factory DtoSignInRequest.fromJson(Map<String, dynamic> json) =>
      _$DtoSignInRequestFromJson(json);

  factory DtoSignInRequest.fromDomain(SignIn cmd) {
    return DtoSignInRequest(
      emailOrPhoneNumber: cmd.emailOrPhoneNumber.getOrCrash(),
      password: cmd.password.getOrCrash(),
    );
  }
}

@freezed
class DtoSignInResponse with _$DtoSignInResponse {
  const DtoSignInResponse._();
  const factory DtoSignInResponse(
      {required DtoAccount dtoAccount,
      required String token}) = _DtoSignInResponse;

  factory DtoSignInResponse.fromJson(Map<String, dynamic> json) =>
      _$DtoSignInResponseFromJson(json);

  AccountAuth toDomain() {
    return AccountAuth(
      token: token,
      account: Account(
          id: dtoAccount.id,
          companyName: dtoAccount.companyName,
          phoneNumber: dtoAccount.phoneNumber,
          email: dtoAccount.email,
          address: dtoAccount.address,
          outletsNumber: dtoAccount.outletsNumber,
          businessType: dtoAccount.businessType,
          mainBusinessType: dtoAccount.mainBusinessType,
          coreBusinessType: dtoAccount.coreBusinessType),
    );
  }

  factory DtoSignInResponse.fromApi(Map<String, dynamic> data) {
    return DtoSignInResponse(
      dtoAccount: DtoAccount(
          id: data["id"],
          companyName: data["companyName"],
          phoneNumber: data["phoneNumber"],
          email: data["email"],
          address: data["address"],
          outletsNumber: data["outletsNumber"],
          businessType: data["businessType"],
          mainBusinessType: data["mainBusinessType"],
          coreBusinessType: data["coreBusinessType"]),
      token: '',
    );
  }
}
