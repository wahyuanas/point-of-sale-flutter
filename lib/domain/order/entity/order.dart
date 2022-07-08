import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/order/object_value/order_object_value.dart';
import 'package:uuid/uuid.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order implements IEntity {
  const Order._();
  const factory Order({
    required int id,
    required String uuid,
    required String code,
    required int customerId,
    required int vehicleId,
    required List<int> employeeId,
    required DateTime date,
    required int amount,
    required int grandAmount,
    required double? disc,
    required int paymentType,
    required int? paymentCardInfo,
    required int charge,
    required int paidAmount,
    required int changeAmount,
    required String? description,
    required int tax,
    required int itemNumber,
    required int paidStatus,
  }) = _Order;

  factory Order.createOrder(int id, CreateOrder createOrder) {
    return Order(
      id: id,
      uuid: const Uuid().v4(),
      code: createOrder.code.getOrCrash(),
      customerId: createOrder.customer.getOrCrash()!.id,
      vehicleId: createOrder.vehicle.getOrCrash()!.id,
      description: createOrder.description.getOrCrash(),
      employeeId: createOrder.employees.getOrCrash()!.map((e) => e.id).toList(),
      amount: createOrder.amount.getOrCrash(),
      grandAmount: createOrder.grandAmount.getOrCrash(),
      disc: createOrder.disc.getOrCrash(),
      paymentType: createOrder.paymentType.getOrCrash()!,
      paymentCardInfo: createOrder.paymentCardInfo!.id.getOrCrash(),
      changeAmount: createOrder.changeAmount.getOrCrash(),
      charge: createOrder.charge.getOrCrash(),
      date: createOrder.date.getOrCrash(),
      itemNumber: createOrder.itemNumber.getOrCrash(),
      paidAmount: createOrder.paidAmount.getOrCrash(),
      paidStatus: createOrder.paidStatus.getOrCrash(),
      tax: createOrder.tax.getOrCrash(),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
