part of 'vehicle_list_cubit.dart';

@freezed
class VehicleListState with _$VehicleListState {
  const factory VehicleListState({required List<Vehicle>? vehicles}) =
      _VehicleListState;

  factory VehicleListState.initial() => const VehicleListState(vehicles: null);
  factory VehicleListState.reLoad(List<Vehicle>? vehicles) => VehicleListState(
        vehicles: vehicles,
      );

  factory VehicleListState.fromJson(Map<String, dynamic> json) =>
      _$VehicleListStateFromJson(json);
}
