import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:uuid/uuid.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  const CustomerModel._();
  const factory CustomerModel({
    required int id,
    required String uuid,
    required String name,
    required String code,
    required String phoneNumber,
    required String email,
    required String type,
    required String address,
    required int accountId,
  }) = _CustomerModel;

  factory CustomerModel.fromCustomer(Customer customer) {
    return CustomerModel(
        id: customer.id,
        uuid: customer.uuid,
        code: customer.code,
        name: customer.name,
        accountId: customer.id,
        phoneNumber: customer.phoneNumber,
        email: customer.email,
        type: customer.type,
        address: customer.address);
  }

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
