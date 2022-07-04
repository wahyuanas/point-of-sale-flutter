part of 'pos_vehicle_owner_list_cubit.dart';

@freezed
class PosVehicleOwnerListState with _$PosVehicleOwnerListState {
  const factory PosVehicleOwnerListState(
      {required List<VehicleOwnerModel>? vehicleOwners,
      required String? keyWord}) = _PosVehicleOwnerListState;

  factory PosVehicleOwnerListState.initial() =>
      const PosVehicleOwnerListState(vehicleOwners: null, keyWord: null);
}
