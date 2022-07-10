import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:pos/domain/vehicle_manufacture/object_value/object_value.dart';
import 'package:pos/domain/vehicle_manufacture/object_value/vehicle_manufacture_object_value.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_manufacture_form_create_state.dart';
part 'vehicle_manufacture_form_create_cubit.freezed.dart';

class VehicleManufactureFormCreateCubit
    extends Cubit<VehicleManufactureFormCreateState> {
  final VehicleManufactureListCubit vehicleManufactureListCubit;
  @override
  VehicleManufactureFormCreateCubit({required this.vehicleManufactureListCubit})
      : _vehicleManufactureListCubit = vehicleManufactureListCubit,
        super(VehicleManufactureFormCreateState.initial());

  final VehicleManufactureListCubit _vehicleManufactureListCubit;

  void onCreateVehicleManufactureNameChanged(String v) {
    emit(state.copyWith(
      createVehicleManufacture: state.createVehicleManufacture
          .copyWith(name: CreateVehicleManufactureName(v)),
    ));
  }

  onAccountIdChanged(int? accountId) {
    emit(state.copyWith(
      createVehicleManufacture: state.createVehicleManufacture
          .copyWith(accountId: CreateVehicleManufactureAccountId(accountId)),
    ));
  }

  onCreate() async {
    if (state.createVehicleManufacture.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      final id = _vehicleManufactureListCubit.state.vehicleManufactures == null
          ? 1
          : _vehicleManufactureListCubit.state.vehicleManufactures!.last.id + 1;
      VehicleManufacture r = VehicleManufacture.createVehicleManufacture(
          id, state.createVehicleManufacture);
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _vehicleManufactureListCubit.onAddVehicleManufacture(r);

      //     // failureOrSuccess.fold(
      //     //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
      //     // }
    }
  }

  onInitial() {
    emit(VehicleManufactureFormCreateState.initial());
  }
}
