part of 'order_list_cubit.dart';

@freezed
class OrderListState with _$OrderListState {
  const factory OrderListState({required List<Order>? orders}) =
      _OrderListState;

  factory OrderListState.initial() => const OrderListState(orders: null);
  factory OrderListState.reLoad(List<Order>? orders) => OrderListState(
        orders: orders,
      );

  factory OrderListState.fromJson(Map<String, dynamic> json) =>
      _$OrderListStateFromJson(json);
}
