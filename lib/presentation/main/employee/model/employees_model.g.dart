// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeesModel _$$_EmployeesModelFromJson(Map<String, dynamic> json) =>
    _$_EmployeesModel(
      id: json['id'] as int,
      uuid: json['uuid'] as int,
      code: json['code'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      accountId: json['accountId'] as int,
      departmentId: json['departmentId'] as int,
    );

Map<String, dynamic> _$$_EmployeesModelToJson(_$_EmployeesModel instance) =>
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
