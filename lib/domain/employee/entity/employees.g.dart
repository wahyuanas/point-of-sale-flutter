// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employees _$$_EmployeesFromJson(Map<String, dynamic> json) => _$_Employees(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      idAccount: json['idAccount'] as int,
    );

Map<String, dynamic> _$$_EmployeesToJson(_$_Employees instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'idAccount': instance.idAccount,
    };
