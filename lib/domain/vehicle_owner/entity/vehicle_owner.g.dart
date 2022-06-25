// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleOwner _$$_VehicleOwnerFromJson(Map<String, dynamic> json) =>
    _$_VehicleOwner(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      idNumber: json['idNumber'] as String,
      address: json['address'] as String,
      idAccount: json['idAccount'] as int,
    );

Map<String, dynamic> _$$_VehicleOwnerToJson(_$_VehicleOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'idNumber': instance.idNumber,
      'address': instance.address,
      'idAccount': instance.idAccount,
    };
