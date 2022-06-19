part of 'home_order_cubit.dart';

@freezed
class HomeOrderState with _$HomeOrderState {
  const factory HomeOrderState({required List<Order>? orders}) =
      _HomeOrderState;

  factory HomeOrderState.initial() => HomeOrderState(orders: orders);
}
