import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';

part 'pos_vehicle_type_list_state.dart';
part 'pos_vehicle_type_list_cubit.freezed.dart';

class PosVehicleTypeListCubit extends Cubit<PosVehicleTypeListState> {
  final VehicleTypeListCubit vehicleTypeListCubit;
  final VehicleManufactureListCubit vehicleManufactureListCubit;
  PosVehicleTypeListCubit(
      {required this.vehicleTypeListCubit,
      required this.vehicleManufactureListCubit})
      : _vehicleTypeListCubit = vehicleTypeListCubit,
        _vehicleManufactureListCubit = vehicleManufactureListCubit,
        super(PosVehicleTypeListState.initial()) {
    _customerListSubscription =
        _vehicleTypeListCubit.stream.listen((vehicleTypeListState) {
      onVehicleChanged();
    });
  }
  final VehicleTypeListCubit _vehicleTypeListCubit;
  final VehicleManufactureListCubit _vehicleManufactureListCubit;
  late StreamSubscription _customerListSubscription;

  onStarted() {
    List<VehicleTypeModel>? vehicleTypes =
        _vehicleTypeListCubit.state.vehicleTypes?.map((vehicleType) {
      VehicleManufacture? vehicleManufacture = _vehicleManufactureListCubit
          .state.vehicleManufactures
          ?.firstWhere((manuf) => manuf.id == vehicleType.manufacture);

      return VehicleTypeModel.createVehicleTypeModel(
          vehicleType, vehicleManufacture);
    }).toList();
    emit(state.copyWith(vehicleTypes: vehicleTypes));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<VehicleTypeModel> vehicleTypes = [];
      _vehicleTypeListCubit.state.vehicleTypes?.forEach((vehicleType) {
        VehicleManufacture? vehicleManufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhere((manuf) => manuf.id == vehicleType.manufacture);

        if (vehicleManufacture!.name.toLowerCase().contains(v.toLowerCase()) ||
            vehicleType.model.toLowerCase().contains(v.toLowerCase())) {
          vehicleTypes.add(VehicleTypeModel.createVehicleTypeModel(
              vehicleType, vehicleManufacture));
        }
      });

      emit(state.copyWith(vehicleTypes: vehicleTypes, keyWord: v));
    } else {
      List<VehicleTypeModel>? vehicleTypes =
          _vehicleTypeListCubit.state.vehicleTypes?.map((vehicleType) {
        VehicleManufacture? vehicleManufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhere((manuf) => manuf.id == vehicleType.manufacture);

        return VehicleTypeModel.createVehicleTypeModel(
            vehicleType, vehicleManufacture);
      }).toList();
      emit(state.copyWith(vehicleTypes: vehicleTypes));
    }
  }

  onReset() {
    List<VehicleTypeModel>? vehicleTypes =
        _vehicleTypeListCubit.state.vehicleTypes?.map((vehicleType) {
      VehicleManufacture? vehicleManufacture = _vehicleManufactureListCubit
          .state.vehicleManufactures
          ?.firstWhere((manuf) => manuf.id == vehicleType.manufacture);

      return VehicleTypeModel.createVehicleTypeModel(
          vehicleType, vehicleManufacture);
    }).toList();
    emit(state.copyWith(vehicleTypes: vehicleTypes, keyWord: null));
  }

  onVehicleChanged() {
    if (state.keyWord == null) {
      List<VehicleTypeModel>? vehicleTypes =
          _vehicleTypeListCubit.state.vehicleTypes?.map((vehicleType) {
        VehicleManufacture? vehicleManufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhere((manuf) => manuf.id == vehicleType.manufacture);

        return VehicleTypeModel.createVehicleTypeModel(
            vehicleType, vehicleManufacture);
      }).toList();
      emit(state.copyWith(vehicleTypes: vehicleTypes));
    } else {
      List<VehicleTypeModel>? vehicleTypes;
      _vehicleTypeListCubit.state.vehicleTypes?.forEach((vehicleType) {
        VehicleManufacture? vehicleManufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhere((manuf) => manuf.id == vehicleType.manufacture);

        if (vehicleManufacture!.name
                .toLowerCase()
                .contains(state.keyWord!.toLowerCase()) ||
            vehicleType.model
                .toLowerCase()
                .contains(state.keyWord!.toLowerCase())) {
          vehicleTypes ?? [];
          vehicleTypes?.add(VehicleTypeModel.createVehicleTypeModel(
              vehicleType, vehicleManufacture));
        }
      });

      emit(state.copyWith(vehicleTypes: vehicleTypes));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
