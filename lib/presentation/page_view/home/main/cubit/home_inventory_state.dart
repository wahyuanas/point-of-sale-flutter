part of 'home_inventory_cubit.dart';

@freezed
class HomeInventoryState with _$HomeInventoryState {
  const factory HomeInventoryState({required List<Inventory>? inventories}) =
      _HomeInventoryState;

  factory HomeInventoryState.initial() =>
      const HomeInventoryState(inventories: null);
}
