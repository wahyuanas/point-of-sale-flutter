// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeesModel _$$_EmployeesModelFromJson(Map<String, dynamic> json) =>
    _$_EmployeesModel(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      idAccount: json['idAccount'] as int,
    );

Map<String, dynamic> _$$_EmployeesModelToJson(_$_EmployeesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'idAccount': instance.idAccount,
    };
