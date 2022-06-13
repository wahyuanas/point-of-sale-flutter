// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_sign_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DtoSignInRequest _$$_DtoSignInRequestFromJson(Map<String, dynamic> json) =>
    _$_DtoSignInRequest(
      emailOrPhoneNumber: json['emailOrPhoneNumber'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_DtoSignInRequestToJson(_$_DtoSignInRequest instance) =>
    <String, dynamic>{
      'emailOrPhoneNumber': instance.emailOrPhoneNumber,
      'password': instance.password,
    };

_$_DtoSignInResponse _$$_DtoSignInResponseFromJson(Map<String, dynamic> json) =>
    _$_DtoSignInResponse(
      dtoAccount:
          DtoAccount.fromJson(json['dtoAccount'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_DtoSignInResponseToJson(
        _$_DtoSignInResponse instance) =>
    <String, dynamic>{
      'dtoAccount': instance.dtoAccount,
      'token': instance.token,
    };
