import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_model.freezed.dart';
part 'employees_model.g.dart';

@freezed
class EmployeesModel with _$EmployeesModel {
  const EmployeesModel._();
  const factory EmployeesModel({
    required int id,
    required int uuid,
    required String code,
    required String name,
    required String phoneNumber,
    required String email,
    required int accountId,
    required int departmentId,
  }) = _EmployeesModel;

  factory EmployeesModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesModelFromJson(json);
}
