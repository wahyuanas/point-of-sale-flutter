import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'employees_model.freezed.dart';
part 'employees_model.g.dart';

@freezed
class EmployeesModel with _$EmployeesModel {
  const EmployeesModel._();
  const factory EmployeesModel({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required int idAccount,
  }) = _EmployeesModel;

  factory EmployeesModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeesModelFromJson(json);
}
