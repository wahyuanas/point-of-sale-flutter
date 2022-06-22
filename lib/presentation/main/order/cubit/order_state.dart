part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({required List<Item>? orders}) = _OrderState;

  factory OrderState.initial() => OrderState(orders: itemss);
  factory OrderState.reLoad(List<Item>? orders) => OrderState(
        orders: orders,
      );

  factory OrderState.fromJson(Map<String, dynamic> json) =>
      _$OrderStateFromJson(json);
}
