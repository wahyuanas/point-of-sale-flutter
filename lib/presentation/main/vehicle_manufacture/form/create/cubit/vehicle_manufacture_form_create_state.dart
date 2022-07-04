part of 'vehicle_manufacture_form_create_cubit.dart';

@freezed
class VehicleManufactureFormCreateState
    with _$VehicleManufactureFormCreateState {
  const factory VehicleManufactureFormCreateState(
      {required StateStatus<FailureExceptions, VehicleManufacture> status,
      required CreateVehicleManufacture createVehicleManufacture,
      required bool initial}) = _VehicleManufactureFormCreateState;

  factory VehicleManufactureFormCreateState.initial() =>
      VehicleManufactureFormCreateState(
          status: const StateStatus.initial(),
          createVehicleManufacture: CreateVehicleManufacture.empty(),
          initial: true);
}
