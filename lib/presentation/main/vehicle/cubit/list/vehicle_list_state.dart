part of 'vehicle_list_cubit.dart';

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState({required List<Vehicle>? vehicles}) =
      _VehicleState;

  factory VehicleState.initial() => const VehicleState(vehicles: null);
  factory VehicleState.reLoad(List<Vehicle>? vehicles) => VehicleState(
        vehicles: vehicles,
      );

  factory VehicleState.fromJson(Map<String, dynamic> json) =>
      _$VehicleStateFromJson(json);
}
