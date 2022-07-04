import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

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
    required int disc,
    required int paymentType,
    required int paymentCardInfo,
    required int charge,
    required int paidAmount,
    required int changeAmount,
    required String description,
    required int tax,
    required int itemNumber,
    required int paidStatus,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
