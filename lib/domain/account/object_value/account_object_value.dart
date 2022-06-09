import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/object_value/object_value.dart';

part "account_object_value.freezed.dart";

@freezed
class SignUp with _$SignUp {
  const factory SignUp(
      {required SignUpCompanyName companyName,
      required SignUpAddress addres,
      required SignUpEmail email,
      required SignUpPhoneNumber phoneNumber,
      required SignUpOutletsNumber outletsNumber,
      required SignUpBusinessType businessType}) = _SignUp;
}
