import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/customer_object_value.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer implements IEntity {
  const Customer._();
  const factory Customer({
    required int id,
    required String uuid,
    required String name,
    required String code,
    required String phoneNumber,
    required String email,
    required String type,
    required String address,
    required int accountId,
  }) = _Customer;

  factory Customer.createCustomer(int id, CreateCustomer createCustomer) {
    return Customer(
        id: id,
        uuid: const Uuid().v4(),
        code: createCustomer.code.getOrCrash(),
        name: createCustomer.name.getOrCrash(),
        accountId: 1,
        phoneNumber: createCustomer.phoneNumber.getOrCrash(),
        email: createCustomer.email.getOrCrash(),
        type: createCustomer.type.getOrCrash(),
        address: createCustomer.address.getOrCrash());
  }

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
