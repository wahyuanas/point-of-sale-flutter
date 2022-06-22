import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'order_detail.freezed.dart';
part 'order_detail.g.dart';

@freezed
class OrderDetail with _$OrderDetail implements IEntity {
  const OrderDetail._();
  const factory OrderDetail({
    required int id,
    required int orderId,
    required int itemId,
    required int price,
    required int qty,
    required int disc,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}
