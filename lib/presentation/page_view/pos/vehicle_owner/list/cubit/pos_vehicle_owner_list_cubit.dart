import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';

part 'pos_vehicle_owner_list_state.dart';
part 'pos_vehicle_owner_list_cubit.freezed.dart';

class PosVehicleOwnerListCubit extends Cubit<PosVehicleOwnerListState> {
  final VehicleOwnerListCubit vehicleOwnerListCubit;
  PosVehicleOwnerListCubit({
    required this.vehicleOwnerListCubit,
  })  : _vehicleOwnerListCubit = vehicleOwnerListCubit,
        super(PosVehicleOwnerListState.initial()) {
    _customerListSubscription =
        _vehicleOwnerListCubit.stream.listen((vehicleOwnerListState) {
      onVehicleChanged();
    });
  }
  final VehicleOwnerListCubit _vehicleOwnerListCubit;
  late StreamSubscription _customerListSubscription;

  onStarted() {
    List<VehicleOwnerModel>? vehicleOwnerModels =
        _vehicleOwnerListCubit.state.vehicleOwners?.map((vehicleOwner) {
      return VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
    }).toList();
    emit(state.copyWith(vehicleOwners: vehicleOwnerModels));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<VehicleOwnerModel>? vehicleOwnerModels = [];
      _vehicleOwnerListCubit.state.vehicleOwners?.forEach((vehicleOwner) {
        if (vehicleOwner.name.toLowerCase().contains(v.toLowerCase())) {
          vehicleOwnerModels!
              .add(VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner));
        }
      });

      if (vehicleOwnerModels.isEmpty) {
        vehicleOwnerModels = null;
      }

      emit(state.copyWith(vehicleOwners: vehicleOwnerModels, keyWord: v));
    } else {
      List<VehicleOwnerModel>? vehicleOwnerModels =
          _vehicleOwnerListCubit.state.vehicleOwners?.map((vehicleOwner) {
        return VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
      }).toList();

      emit(state.copyWith(vehicleOwners: vehicleOwnerModels));
    }
  }

  onReset() {
    List<VehicleOwnerModel>? vehicleOwnerModels =
        _vehicleOwnerListCubit.state.vehicleOwners?.map((vehicleOwner) {
      return VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
    }).toList();
    emit(state.copyWith(vehicleOwners: vehicleOwnerModels, keyWord: null));
  }

  onVehicleChanged() {
    if (state.keyWord == null) {
      List<VehicleOwnerModel>? vehicleOwnerModels =
          _vehicleOwnerListCubit.state.vehicleOwners?.map((vehicleOwner) {
        return VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
      }).toList();

      emit(state.copyWith(vehicleOwners: vehicleOwnerModels));
    } else {
      List<VehicleOwnerModel>? vehicleOwnerModels = [];
      _vehicleOwnerListCubit.state.vehicleOwners?.forEach((vehicleOwner) {
        if (vehicleOwner.name
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          vehicleOwnerModels!
              .add(VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner));
        }
      });
      if (vehicleOwnerModels.isEmpty) {
        vehicleOwnerModels = null;
      }

      emit(state.copyWith(vehicleOwners: vehicleOwnerModels));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
