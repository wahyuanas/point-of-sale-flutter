part of 'pos_vehicle_type_list_cubit.dart';

@freezed
class PosVehicleTypeListState with _$PosVehicleTypeListState {
  const factory PosVehicleTypeListState(
      {required List<VehicleTypeModel>? vehicleTypes,
      required String? keyWord}) = _PosVehicleTypeListState;

  factory PosVehicleTypeListState.initial() =>
      const PosVehicleTypeListState(vehicleTypes: null, keyWord: null);
}
