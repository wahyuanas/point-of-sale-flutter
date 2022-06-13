import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/object_value/sign_in/object_value.dart';
import 'package:pos/domain/core/object_value/failures.dart';

part "account_object_value.freezed.dart";

@freezed
class SignIn with _$SignIn {
  const factory SignIn(
      {required SignInEmailOrPhoneNumber emailOrPhoneNumber,
      required SignInPassword password}) = _SignIn;

  factory SignIn.empty() => SignIn(
      emailOrPhoneNumber: SignInEmailOrPhoneNumber(''),
      password: SignInPassword(''));
}

extension SignInX on SignIn {
  Option<ObjectValueFailure> get failureOption {
    return emailOrPhoneNumber.failureOrUnit
        .andThen(password.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
