import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/account/object_value/sign_up/account_object_value.dart';

part 'dto_sign_up.freezed.dart';
part 'dto_sign_up.g.dart';

@freezed
class DtoSignUpRequest with _$DtoSignUpRequest {
  const DtoSignUpRequest._();
  const factory DtoSignUpRequest(
      {required String companyName,
      required String phoneNumber,
      required String email,
      required String address,
      required int outletsNumber,
      required int businessType,
      required int? mainBusinessType,
      required String? coreBusinessType}) = _DtoSignUpRequest;

  factory DtoSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$DtoSignUpRequestFromJson(json);

  factory DtoSignUpRequest.fromDomain(SignUp cmd) {
    return DtoSignUpRequest(
      companyName: cmd.companyName.getOrCrash(),
      phoneNumber: cmd.phoneNumber.getOrCrash(),
      email: cmd.email.getOrCrash(),
      address: cmd.address.getOrCrash(),
      outletsNumber: cmd.outletsNumber.getOrCrash(),
      businessType: cmd.businessType.getOrCrash(),
      mainBusinessType: cmd.mainBusinessType.getOrCrash(),
      coreBusinessType: cmd.coreBusinessType.getOrCrash(),
    );
  }
  Map<String, dynamic> toFirestoreCollection(String uUid) {
    return {
      "id": uUid,
      "companyName": companyName,
      "phoneNumber": phoneNumber,
      "email": email,
      "address": address,
      "outletsNumber": outletsNumber,
      "businessType": businessType,
      "mainBusinessType": mainBusinessType,
      "coreBusinessType": coreBusinessType
    };
  }
}

@freezed
class DtoSignUpResponse with _$DtoSignUpResponse {
  const DtoSignUpResponse._();
  const factory DtoSignUpResponse(
      {required int id,
      required String companyName,
      required String phoneNumber,
      required String email,
      required String address,
      required int outletsNumber,
      required int businessType,
      required int? mainBusinessType,
      required String? coreBusinessType}) = _DtoSignUpResponse;

  factory DtoSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$DtoSignUpResponseFromJson(json);

  factory DtoSignUpResponse.fromApi(Map<String, dynamic> data) {
    return DtoSignUpResponse(
        id: data["id"],
        companyName: data["companyName"],
        phoneNumber: data["phoneNumber"],
        email: data["email"],
        address: data["address"],
        outletsNumber: data["outletsNumber"],
        businessType: data["businessType"],
        mainBusinessType: data["mainBusinessType"],
        coreBusinessType: data["coreBusinessType"]);
  }

  factory DtoSignUpResponse.fromDtoSignUpRequest(DtoSignUpRequest r) {
    Random random = Random();
    int id = random.nextInt(1000);
    return DtoSignUpResponse(
        id: id,
        companyName: r.companyName,
        phoneNumber: r.phoneNumber,
        email: r.email,
        address: r.address,
        outletsNumber: r.outletsNumber,
        businessType: r.businessType,
        mainBusinessType: r.mainBusinessType,
        coreBusinessType: r.coreBusinessType);
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
        mainBusinessType: mainBusinessType,
        coreBusinessType: coreBusinessType);
  }
}
