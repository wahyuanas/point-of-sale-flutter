part of 'vehicle_owner_list_cubit.dart';

@freezed
class VehicleOwnerListState with _$VehicleOwnerListState {
  const factory VehicleOwnerListState(
      {required List<VehicleOwner>? vehicleOwners}) = _VehicleOwnerListState;

  factory VehicleOwnerListState.initial() =>
      const VehicleOwnerListState(vehicleOwners: null);
  factory VehicleOwnerListState.reLoad(List<VehicleOwner>? vehicleOwners) =>
      VehicleOwnerListState(
        vehicleOwners: vehicleOwners,
      );

  factory VehicleOwnerListState.fromJson(Map<String, dynamic> json) =>
      _$VehicleOwnerListStateFromJson(json);
}
