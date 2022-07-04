// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleOwnerModel _$$_VehicleOwnerModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleOwnerModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      idNumber: json['idNumber'] as String,
      address: json['address'] as String,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_VehicleOwnerModelToJson(
        _$_VehicleOwnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'idNumber': instance.idNumber,
      'address': instance.address,
      'accountId': instance.accountId,
    };
