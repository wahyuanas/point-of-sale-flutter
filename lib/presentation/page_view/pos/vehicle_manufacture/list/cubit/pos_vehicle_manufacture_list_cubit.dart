import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/model/vehicle_manufacture_model.dart';

part 'pos_vehicle_manufacture_list_state.dart';
part 'pos_vehicle_manufacture_list_cubit.freezed.dart';

class PosVehicleManufactureListCubit
    extends Cubit<PosVehicleManufactureListState> {
  final VehicleManufactureListCubit vehicleManufactureListCubit;
  PosVehicleManufactureListCubit({
    required this.vehicleManufactureListCubit,
  })  : _vehicleManufactureListCubit = vehicleManufactureListCubit,
        super(PosVehicleManufactureListState.initial()) {
    _customerListSubscription = _vehicleManufactureListCubit.stream
        .listen((vehicleManufactureListState) {
      onVehicleChanged();
    });
  }
  final VehicleManufactureListCubit _vehicleManufactureListCubit;
  late StreamSubscription _customerListSubscription;

  onStarted() {
    List<VehicleManufactureModel>? vehicleManufactureModels =
        _vehicleManufactureListCubit.state.vehicleManufactures
            ?.map((vehicleManufacture) {
      return VehicleManufactureModel.createVehicleManufactureModel(
          vehicleManufacture);
    }).toList();
    emit(state.copyWith(vehicleManufactures: vehicleManufactureModels));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<VehicleManufactureModel>? vehicleManufactureModels = [];
      _vehicleManufactureListCubit.state.vehicleManufactures
          ?.forEach((vehicleManufacture) {
        if (vehicleManufacture.name.toLowerCase().contains(v.toLowerCase())) {
          vehicleManufactureModels?.add(
              VehicleManufactureModel.createVehicleManufactureModel(
                  vehicleManufacture));
        }
      });
      if (vehicleManufactureModels.isEmpty) {
        vehicleManufactureModels = null;
      }
      emit(state.copyWith(
          vehicleManufactures: vehicleManufactureModels, keyWord: v));
    } else {
      List<VehicleManufactureModel>? vehicleManufactures =
          _vehicleManufactureListCubit.state.vehicleManufactures
              ?.map((vehicleManufacture) {
        return VehicleManufactureModel.createVehicleManufactureModel(
            vehicleManufacture);
      }).toList();

      emit(state.copyWith(vehicleManufactures: vehicleManufactures));
    }
  }

  onReset() {
    List<VehicleManufactureModel>? vehicleManufactures =
        _vehicleManufactureListCubit.state.vehicleManufactures
            ?.map((vehicleManufacture) {
      return VehicleManufactureModel.createVehicleManufactureModel(
          vehicleManufacture);
    }).toList();
    emit(state.copyWith(
        vehicleManufactures: vehicleManufactures, keyWord: null));
  }

  onVehicleChanged() {
    if (state.keyWord == null) {
      List<VehicleManufactureModel>? vehicleManufactures =
          _vehicleManufactureListCubit.state.vehicleManufactures
              ?.map((vehicleManufacture) {
        return VehicleManufactureModel.createVehicleManufactureModel(
            vehicleManufacture);
      }).toList();

      emit(state.copyWith(vehicleManufactures: vehicleManufactures));
    } else {
      List<VehicleManufactureModel>? vehicleManufactureModels = [];
      _vehicleManufactureListCubit.state.vehicleManufactures
          ?.forEach((vehicleManufacture) {
        if (vehicleManufacture.name
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          vehicleManufactureModels?.add(
              VehicleManufactureModel.createVehicleManufactureModel(
                  vehicleManufacture));
        }
      });
      if (vehicleManufactureModels.isEmpty) {
        vehicleManufactureModels = null;
      }
      emit(state.copyWith(vehicleManufactures: vehicleManufactureModels));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
