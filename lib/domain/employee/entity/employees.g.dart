// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employees _$$_EmployeesFromJson(Map<String, dynamic> json) => _$_Employees(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      accountId: json['accountId'] as int,
      departmentId: json['departmentId'] as int,
    );

Map<String, dynamic> _$$_EmployeesToJson(_$_Employees instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'code': instance.code,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'accountId': instance.accountId,
      'departmentId': instance.departmentId,
    };
