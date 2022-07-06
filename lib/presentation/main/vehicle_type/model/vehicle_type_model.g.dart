// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleTypeModel _$$_VehicleTypeModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleTypeModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      manufacture: json['manufacture'] == null
          ? null
          : VehicleManufactureModel.fromJson(
              json['manufacture'] as Map<String, dynamic>),
      model: json['model'] as String,
      year: json['year'] as int,
      color: json['color'] as String,
      description: json['description'] as String,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_VehicleTypeModelToJson(_$_VehicleTypeModel instance) =>
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
