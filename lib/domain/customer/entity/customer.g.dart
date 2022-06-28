// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
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

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
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
