// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_department_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeDepartmentListState _$$_EmployeeDepartmentListStateFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeeDepartmentListState(
      employeesDepartments: (json['employeesDepartments'] as List<dynamic>?)
          ?.map((e) => EmployeesDepartment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmployeeDepartmentListStateToJson(
        _$_EmployeeDepartmentListState instance) =>
    <String, dynamic>{
      'employeesDepartments': instance.employeesDepartments,
    };
