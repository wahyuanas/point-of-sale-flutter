// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeesDepartment _$$_EmployeesDepartmentFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeesDepartment(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_EmployeesDepartmentToJson(
        _$_EmployeesDepartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'code': instance.code,
      'accountId': instance.accountId,
    };
