part of 'order_detail_list_cubit.dart';

@freezed
class OrderDetailListState with _$OrderDetailListState {
  const factory OrderDetailListState(
      {required List<OrderDetail>? orderDetails}) = _OrderDetailListState;

  factory OrderDetailListState.initial() =>
      const OrderDetailListState(orderDetails: null);
  factory OrderDetailListState.reLoad(List<OrderDetail>? orderDetails) =>
      OrderDetailListState(
        orderDetails: orderDetails,
      );

  factory OrderDetailListState.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailListStateFromJson(json);
}
