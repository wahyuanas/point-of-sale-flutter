// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_sign_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DtoSignUpRequest _$$_DtoSignUpRequestFromJson(Map<String, dynamic> json) =>
    _$_DtoSignUpRequest(
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      outletsNumber: json['outletsNumber'] as int,
      businessType: json['businessType'] as int,
      mainBusinessType: json['mainBusinessType'] as int?,
      coreBusinessType: json['coreBusinessType'] as String?,
    );

Map<String, dynamic> _$$_DtoSignUpRequestToJson(_$_DtoSignUpRequest instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'address': instance.address,
      'outletsNumber': instance.outletsNumber,
      'businessType': instance.businessType,
      'mainBusinessType': instance.mainBusinessType,
      'coreBusinessType': instance.coreBusinessType,
    };

_$_DtoSignUpResponse _$$_DtoSignUpResponseFromJson(Map<String, dynamic> json) =>
    _$_DtoSignUpResponse(
      id: json['id'] as int,
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      outletsNumber: json['outletsNumber'] as int,
      businessType: json['businessType'] as int,
      mainBusinessType: json['mainBusinessType'] as int?,
      coreBusinessType: json['coreBusinessType'] as String?,
    );

Map<String, dynamic> _$$_DtoSignUpResponseToJson(
        _$_DtoSignUpResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'address': instance.address,
      'outletsNumber': instance.outletsNumber,
      'businessType': instance.businessType,
      'mainBusinessType': instance.mainBusinessType,
      'coreBusinessType': instance.coreBusinessType,
    };
