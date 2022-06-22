part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({required List<Order>? orders}) = _OrderState;

  factory OrderState.initial() => const OrderState(orders: null);
  factory OrderState.reLoad(List<Order>? orders) => OrderState(
        orders: orders,
      );

  factory OrderState.fromJson(Map<String, dynamic> json) =>
      _$OrderStateFromJson(json);
}
