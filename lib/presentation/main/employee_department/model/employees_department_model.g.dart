// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeesDepartmentModel _$$_EmployeesDepartmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeesDepartmentModel(
      id: json['id'] as int,
      uuid: json['uuid'] as int,
      code: json['code'] as String,
      name: json['name'] as String,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_EmployeesDepartmentModelToJson(
        _$_EmployeesDepartmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'code': instance.code,
      'name': instance.name,
      'accountId': instance.accountId,
    };
