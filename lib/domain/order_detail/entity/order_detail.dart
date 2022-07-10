import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

part 'order_detail.freezed.dart';
part 'order_detail.g.dart';

@freezed
class OrderDetail with _$OrderDetail implements IEntity {
  const OrderDetail._();
  const factory OrderDetail(
      {required int id,
      required String uuid,
      required int orderId,
      required Item item,
      required int accountId
      // required int itemId,
      // required int price,
      // required int qty,
      // required int disc,
      }) = _OrderDetail;

  factory OrderDetail.createOrderDetail(
      int id, int orderId, Item item, int accountId) {
    return OrderDetail(
        id: id,
        uuid: const Uuid().v4(),
        orderId: orderId,
        item: item,
        accountId: accountId);
  }

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}
