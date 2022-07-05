// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeListState _$$_EmployeeListStateFromJson(Map<String, dynamic> json) =>
    _$_EmployeeListState(
      employees: (json['employees'] as List<dynamic>?)
          ?.map((e) => Employees.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmployeeListStateToJson(
        _$_EmployeeListState instance) =>
    <String, dynamic>{
      'employees': instance.employees,
    };
