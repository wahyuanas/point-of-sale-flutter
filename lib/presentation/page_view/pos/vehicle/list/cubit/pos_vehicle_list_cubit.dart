import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';

part 'pos_vehicle_list_state.dart';
part 'pos_vehicle_list_cubit.freezed.dart';

class PosVehicleListCubit extends Cubit<PosVehicleListState> {
  final VehicleListCubit vehicleListCubit;
  PosVehicleListCubit({required this.vehicleListCubit})
      : _vehicleListCubit = vehicleListCubit,
        super(PosVehicleListState.initial()) {
    _customerListSubscription =
        _vehicleListCubit.stream.listen((vehicleListState) {
      onVehicleChanged(vehicleListState);
    });
  }
  final VehicleListCubit _vehicleListCubit;
  late StreamSubscription _customerListSubscription;

  onStarted() {
    emit(state.copyWith(vehicles: _vehicleListCubit.state.vehicles));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<Vehicle>? listVehicle; //= List.from(state.vehicles!.toList());
      listVehicle = vehicleListCubit.state.vehicles
          ?.where((vehicle) =>
              vehicle.policyNumber.toLowerCase().contains(v.toLowerCase()))
          .toList();
      emit(state.copyWith(vehicles: listVehicle, keyWord: v));
    } else {
      List<Vehicle>? listVehicle = vehicleListCubit.state.vehicles;
      emit(state.copyWith(vehicles: listVehicle));
    }
  }

  onReset() {
    emit(PosVehicleListState.initial());
  }

  onVehicleChanged(VehicleListState vehicleListState) {
    if (state.keyWord == null) {
      emit(state.copyWith(vehicles: vehicleListState.vehicles));
    } else {
      List<Vehicle>? listVehicle; //= List.from(state.vehicles!.toList());
      listVehicle = vehicleListCubit.state.vehicles
          ?.where((vehicle) => vehicle.policyNumber
              .toLowerCase()
              .contains(state.keyWord!.toLowerCase()))
          .toList();
      emit(state.copyWith(vehicles: listVehicle));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
