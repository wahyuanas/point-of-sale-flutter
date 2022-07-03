part of 'vehicle_type_list_cubit.dart';

@freezed
class VehicleTypeListState with _$VehicleTypeListState {
  const factory VehicleTypeListState(
      {required List<VehicleType>? vehicleTypes}) = _VehicleTypeListState;

  factory VehicleTypeListState.initial() =>
      const VehicleTypeListState(vehicleTypes: null);
  factory VehicleTypeListState.reLoad(List<VehicleType>? vehicleTypes) =>
      VehicleTypeListState(
        vehicleTypes: vehicleTypes,
      );

  factory VehicleTypeListState.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeListStateFromJson(json);
}
