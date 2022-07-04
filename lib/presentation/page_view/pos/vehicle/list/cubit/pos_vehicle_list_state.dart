part of 'pos_vehicle_list_cubit.dart';

@freezed
class PosVehicleListState with _$PosVehicleListState {
  const factory PosVehicleListState(
      {required List<VehicleModel>? vehicles,
      required String? keyWord}) = _PosVehicleListState;

  factory PosVehicleListState.initial() =>
      const PosVehicleListState(vehicles: null, keyWord: null);
}
