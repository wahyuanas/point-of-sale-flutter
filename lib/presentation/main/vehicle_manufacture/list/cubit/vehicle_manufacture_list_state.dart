part of 'vehicle_manufacture_list_cubit.dart';

@freezed
class VehicleManufactureListState with _$VehicleManufactureListState {
  const factory VehicleManufactureListState(
          {required List<VehicleManufacture>? vehicleManufactures}) =
      _VehicleManufactureListState;

  factory VehicleManufactureListState.initial() =>
      const VehicleManufactureListState(vehicleManufactures: null);
  factory VehicleManufactureListState.reLoad(
          List<VehicleManufacture>? vehicleManufactures) =>
      VehicleManufactureListState(
        vehicleManufactures: vehicleManufactures,
      );

  factory VehicleManufactureListState.fromJson(Map<String, dynamic> json) =>
      _$VehicleManufactureListStateFromJson(json);
}
