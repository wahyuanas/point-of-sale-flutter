part of 'vehicle_owners_form_create_cubit.dart';

@freezed
class VehicleOwnerFormCreateState with _$VehicleOwnerFormCreateState {
  const factory VehicleOwnerFormCreateState(
      {required StateStatus<FailureExceptions, VehicleOwner> status,
      required CreateVehicleOwner createVehicleOwner,
      required bool initial}) = _VehicleOwnerFormCreateState;

  factory VehicleOwnerFormCreateState.initial() => VehicleOwnerFormCreateState(
      status: const StateStatus.initial(),
      createVehicleOwner: CreateVehicleOwner.empty(),
      initial: true);
}
