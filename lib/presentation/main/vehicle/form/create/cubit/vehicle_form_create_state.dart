part of 'vehicle_form_create_cubit.dart';

@freezed
class VehicleFormCreateState with _$VehicleFormCreateState {
  const factory VehicleFormCreateState(
      {required StateStatus<FailureExceptions, Vehicle> status,
      required CreateVehicle createVehicle,
      required bool initial}) = _VehicleFormCreateState;

  factory VehicleFormCreateState.initial() => VehicleFormCreateState(
      status: const StateStatus.initial(),
      createVehicle: CreateVehicle.empty(),
      initial: true);
}
