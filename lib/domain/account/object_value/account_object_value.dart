import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/object_value/object_value.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part "account_object_value.freezed.dart";

@freezed
class SignUp with _$SignUp {
  const factory SignUp(
      {required SignUpCompanyName companyName,
      required SignUpAddress address,
      required SignUpEmail email,
      required SignUpPhoneNumber phoneNumber,
      required SignUpOutletsNumber outletsNumber,
      required SignUpBusinessType businessType}) = _SignUp;

  factory SignUp.empty() => SignUp(
        companyName: SignUpCompanyName(''),
        phoneNumber: SignUpPhoneNumber(''),
        email: SignUpEmail(''),
        address: SignUpAddress(''),
        businessType: SignUpBusinessType(''),
        outletsNumber: SignUpOutletsNumber(''),
      );
}

extension SignUpX on SignUp {
  Option<ObjectValueFailure> get failureOption {
    return companyName.failureOrUnit
        .andThen(email.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(address.failureOrUnit)
        .andThen(businessType.failureOrUnit)
        .andThen(outletsNumber.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
