part of 'order_detail_cubit.dart';

@freezed
class OrderDetailState with _$OrderDetailState {
  const factory OrderDetailState({required List<OrderDetail>? orderDetails}) =
      _OrderDetailState;

  factory OrderDetailState.initial() =>
      const OrderDetailState(orderDetails: null);
  factory OrderDetailState.reLoad(List<OrderDetail>? orderDetails) =>
      OrderDetailState(
        orderDetails: orderDetails,
      );

  factory OrderDetailState.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailStateFromJson(json);
}
