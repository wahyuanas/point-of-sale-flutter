// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleType _$$_VehicleTypeFromJson(Map<String, dynamic> json) =>
    _$_VehicleType(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      manufacture: json['manufacture'] as int,
      model: json['model'] as String,
      year: json['year'] as int,
      color: json['color'] as String,
      description: json['description'] as String,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_VehicleTypeToJson(_$_VehicleType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'manufacture': instance.manufacture,
      'model': instance.model,
      'year': instance.year,
      'color': instance.color,
      'description': instance.description,
      'accountId': instance.accountId,
    };
