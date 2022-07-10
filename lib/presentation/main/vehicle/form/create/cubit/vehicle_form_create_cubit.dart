import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';
import 'package:pos/domain/vehicle/object_value/object_value.dart';
import 'package:pos/domain/vehicle/object_value/vehicle_object_value.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_form_create_state.dart';
part 'vehicle_form_create_cubit.freezed.dart';

class VehicleFormCreateCubit extends Cubit<VehicleFormCreateState> {
  final VehicleListCubit vehicleListCubit;
  @override
  VehicleFormCreateCubit({required this.vehicleListCubit})
      : _vehicleListCubit = vehicleListCubit,
        super(VehicleFormCreateState.initial());

  final VehicleListCubit _vehicleListCubit;

  void onCreateVehiclePolicyNumberChanged(String v) {
    emit(state.copyWith(
      createVehicle: state.createVehicle
          .copyWith(policyNumber: CreateVehiclePolicyNumber(v)),
    ));
  }

  void onCreateVehicleMachineNumberChanged(String v) {
    emit(state.copyWith(
      createVehicle: state.createVehicle
          .copyWith(machineNumber: CreateVehicleMachineNumber(v)),
    ));
  }

  void onCreateVehicleCurrentKmChanged(String v) {
    emit(state.copyWith(
      createVehicle:
          state.createVehicle.copyWith(currentKm: CreateVehicleCurrentKm(v)),
    ));
  }

  void onCreateVehicleDescriptionChanged(String v) {
    emit(state.copyWith(
      createVehicle: state.createVehicle
          .copyWith(description: CreateVehicleDescription(v)),
    ));
  }

  void onCreateVehicleOwnerChanged(VehicleOwnerModel? v) {
    emit(state.copyWith(
      createVehicle:
          state.createVehicle.copyWith(vehicleOwner: CreateVehicleOwner(v)),
    ));
  }

  void onCreateVehicleTypeChanged(VehicleTypeModel? v) {
    emit(state.copyWith(
      createVehicle:
          state.createVehicle.copyWith(vehicleType: CreateVehicleType(v)),
    ));
  }

  onAccountIdChanged(int? accountId) {
    emit(state.copyWith(
      createVehicle: state.createVehicle
          .copyWith(accountId: CreateVehicleAccountId(accountId)),
    ));
  }

  onCreate() async {
    if (state.createVehicle.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      final id = _vehicleListCubit.state.vehicles == null
          ? 1
          : _vehicleListCubit.state.vehicles!.last.id + 1;
      Vehicle r = Vehicle.createVehicle(id, state.createVehicle);
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _vehicleListCubit.onAddVehicle(r);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
      // }
    }
  }

  onInitial() {
    emit(VehicleFormCreateState.initial());
  }
}
