import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/object_value/account_object_value.dart';

part 'dto_account.freezed.dart';
part 'dto_account.g.dart';

@freezed
class DtoAccountRequest with _$DtoAccountRequest {
  const factory DtoAccountRequest(
      {required String companyName,
      required String phoneNumber,
      required String email,
      required String address,
      required int outletsNumber,
      required int businessType}) = _DtoAccountRequest;

  factory DtoAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$DtoAccountRequestFromJson(json);

  factory DtoAccountRequest.fromDomain(SignUp cmd) {
    return DtoAccountRequest(
      companyName: cmd.companyName.getOrCrash(),
      phoneNumber: cmd.phoneNumber.getOrCrash(),
      email: cmd.email.getOrCrash(),
      address: cmd.address.getOrCrash(),
      outletsNumber: cmd.outletsNumber.getOrCrash(),
      businessType: cmd.businessType.getOrCrash(),
    );
  }
}

@freezed
class DtoAccountResponse with _$DtoAccountResponse {
  const DtoAccountResponse._();
  const factory DtoAccountResponse(
      {required int id,
      required String companyName,
      required String phoneNumber,
      required String email,
      required String address,
      required int outletsNumber,
      required int businessType}) = _DtoAccountResponse;

  factory DtoAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$DtoAccountResponseFromJson(json);

  factory DtoAccountResponse.fromApi(Map<String, dynamic> data) {
    return DtoAccountResponse(
      id: data["id"],
      companyName: data["companyName"],
      phoneNumber: data["phoneNumber"],
      email: data["email"],
      address: data["address"],
      outletsNumber: data["outletsNumber"],
      businessType: data["businessType"],
    );
  }

  Account toDomain() {
    return Account(
      id: id,
      companyName: companyName,
      phoneNumber: phoneNumber,
      email: email,
      address: address,
      outletsNumber: outletsNumber,
      businessType: businessType,
    );
  }
}
