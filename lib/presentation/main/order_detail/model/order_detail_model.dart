import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/order_detail/entity/order_detail.dart';
import 'package:pos/presentation/main/catalog/model/item_model.dart';

part 'order_detail_model.freezed.dart';
part 'order_detail_model.g.dart';

@freezed
class OrderDetailModel with _$OrderDetailModel {
  const OrderDetailModel._();
  const factory OrderDetailModel({
    required int id,
    required String uuid,
    required int orderId,
    required ItemModel? item,
    required int accountId,
  }) = _OrderDetailModel;

  factory OrderDetailModel.createOrderDetailModel(
      OrderDetail orderDetail, ItemModel? itemModel) {
    return OrderDetailModel(
        id: orderDetail.id,
        orderId: orderDetail.orderId,
        uuid: orderDetail.uuid,
        item: itemModel,
        accountId: orderDetail.accountId);
  }

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailModelFromJson(json);
}
