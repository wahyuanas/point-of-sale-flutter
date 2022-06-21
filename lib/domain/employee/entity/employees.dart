import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'employees.freezed.dart';
part 'employees.g.dart';

@freezed
class Employees with _$Employees implements IEntity {
  const Employees._();
  const factory Employees({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required int idAccount,
  }) = _Employees;

  factory Employees.fromJson(Map<String, dynamic> json) =>
      _$EmployeesFromJson(json);
}
