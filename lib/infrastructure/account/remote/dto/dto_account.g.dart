// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DtoAccountRequest _$$_DtoAccountRequestFromJson(Map<String, dynamic> json) =>
    _$_DtoAccountRequest(
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      outletsNumber: json['outletsNumber'] as int,
      businessType: json['businessType'] as int,
    );

Map<String, dynamic> _$$_DtoAccountRequestToJson(
        _$_DtoAccountRequest instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'address': instance.address,
      'outletsNumber': instance.outletsNumber,
      'businessType': instance.businessType,
    };

_$_DtoAccountResponse _$$_DtoAccountResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DtoAccountResponse(
      id: json['id'] as int,
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      outletsNumber: json['outletsNumber'] as int,
      businessType: json['businessType'] as int,
    );

Map<String, dynamic> _$$_DtoAccountResponseToJson(
        _$_DtoAccountResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'address': instance.address,
      'outletsNumber': instance.outletsNumber,
      'businessType': instance.businessType,
    };
