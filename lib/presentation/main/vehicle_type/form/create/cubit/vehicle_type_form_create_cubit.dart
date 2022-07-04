import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';
import 'package:pos/domain/vehicle_type/object_value/object_value.dart';
import 'package:pos/domain/vehicle_type/object_value/vehicle_type_object_value.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/vehicle_manufacture/model/vehicle_manufacture_model.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_type_form_create_state.dart';
part 'vehicle_type_form_create_cubit.freezed.dart';

class VehicleTypeFormCreateCubit extends Cubit<VehicleTypeFormCreateState> {
  final VehicleTypeListCubit vehicleTypeListCubit;
  @override
  VehicleTypeFormCreateCubit({required this.vehicleTypeListCubit})
      : _vehicleTypeListCubit = vehicleTypeListCubit,
        super(VehicleTypeFormCreateState.initial());

  final VehicleTypeListCubit _vehicleTypeListCubit;

  void onCreateVehicleTypeManufactureChanged(VehicleManufactureModel? v) {
    emit(state.copyWith(
      createVehicleType: state.createVehicleType
          .copyWith(manufacture: CreateVehicleTypeManufacture(v)),
    ));
  }

  void onCreateVehicleTypeModelChanged(String v) {
    emit(state.copyWith(
      createVehicleType:
          state.createVehicleType.copyWith(model: CreateVehicleTypeModel(v)),
    ));
  }

  void onCreateVehicleTypeColorChanged(String v) {
    emit(state.copyWith(
      createVehicleType:
          state.createVehicleType.copyWith(color: CreateVehicleTypeColor(v)),
    ));
  }

  void onCreateVehicleTypeDescriptionChanged(String v) {
    emit(state.copyWith(
      createVehicleType: state.createVehicleType
          .copyWith(description: CreateVehicleTypeDescription(v)),
    ));
  }

  void onCreateVehicleTypeYearChanged(String v) {
    emit(state.copyWith(
      createVehicleType:
          state.createVehicleType.copyWith(year: CreateVehicleTypeYear(v)),
    ));
  }

  onCreate() async {
    if (state.createVehicleType.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      final id = _vehicleTypeListCubit.state.vehicleTypes == null
          ? 1
          : _vehicleTypeListCubit.state.vehicleTypes!.last.id + 1;
      VehicleType r =
          VehicleType.createVehicleType(id, state.createVehicleType);
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _vehicleTypeListCubit.onAddVehicleType(r);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
      // }
    }
  }

  onInitial() {
    emit(VehicleTypeFormCreateState.initial());
  }
}
