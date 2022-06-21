import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer implements IEntity {
  const Customer._();
  const factory Customer({
    required int id,
    required String name,
    required String code,
    required String phoneNumber,
    required String email,
    required String type,
    required String address,
    required int idAccount,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
