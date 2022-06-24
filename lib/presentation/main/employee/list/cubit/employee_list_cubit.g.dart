// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeState _$$_EmployeeStateFromJson(Map<String, dynamic> json) =>
    _$_EmployeeState(
      employees: (json['employees'] as List<dynamic>?)
          ?.map((e) => Employees.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmployeeStateToJson(_$_EmployeeState instance) =>
    <String, dynamic>{
      'employees': instance.employees,
    };
