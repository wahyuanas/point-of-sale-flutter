part of 'home_order_cubit.dart';

@freezed
class HomeOrderState with _$HomeOrderState {
  const factory HomeOrderState({required List<OrderModel>? orders}) =
      _HomeOrderState;

  factory HomeOrderState.initial() => const HomeOrderState(orders: null);
}
