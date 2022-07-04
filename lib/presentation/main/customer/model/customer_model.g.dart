// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      type: json['type'] as String,
      address: json['address'] as String,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'code': instance.code,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'type': instance.type,
      'address': instance.address,
      'accountId': instance.accountId,
    };
