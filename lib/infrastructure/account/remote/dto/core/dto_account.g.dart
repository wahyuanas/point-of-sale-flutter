// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DtoAccount _$$_DtoAccountFromJson(Map<String, dynamic> json) =>
    _$_DtoAccount(
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

Map<String, dynamic> _$$_DtoAccountToJson(_$_DtoAccount instance) =>
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
