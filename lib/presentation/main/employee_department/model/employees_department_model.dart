import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_department_model.freezed.dart';
part 'employees_department_model.g.dart';

@freezed
class EmployeesDepartmentModel with _$EmployeesDepartmentModel {
  const EmployeesDepartmentModel._();
  const factory EmployeesDepartmentModel({
    required int id,
    required int uuid,
    required String code,
    required String name,
    required int accountId,
  }) = _EmployeesDepartmentModel;

  factory EmployeesDepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesDepartmentModelFromJson(json);
}
