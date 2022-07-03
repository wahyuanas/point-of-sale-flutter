part of 'vehicle_type_form_create_cubit.dart';

@freezed
class VehicleTypeFormCreateState with _$VehicleTypeFormCreateState {
  const factory VehicleTypeFormCreateState(
      {required StateStatus<FailureExceptions, VehicleType> status,
      required CreateVehicleType createVehicleType,
      required bool initial}) = _VehicleTypeFormCreateState;

  factory VehicleTypeFormCreateState.initial() => VehicleTypeFormCreateState(
      status: const StateStatus.initial(),
      createVehicleType: CreateVehicleType.empty(),
      initial: true);
}
