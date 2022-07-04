part of 'pos_vehicle_manufacture_list_cubit.dart';

@freezed
class PosVehicleManufactureListState with _$PosVehicleManufactureListState {
  const factory PosVehicleManufactureListState(
      {required List<VehicleManufactureModel>? vehicleManufactures,
      required String? keyWord}) = _PosVehicleManufactureListState;

  factory PosVehicleManufactureListState.initial() =>
      const PosVehicleManufactureListState(
          vehicleManufactures: null, keyWord: null);
}
