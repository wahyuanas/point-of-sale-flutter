import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';
import 'package:pos/domain/vehicle_owner/entity/vehicle_owner.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/model/vehicle_manufacture_model.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/model/vehicle_owner_model.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/model/vehicle_type_model.dart';

part 'pos_vehicle_list_state.dart';
part 'pos_vehicle_list_cubit.freezed.dart';

class PosVehicleListCubit extends Cubit<PosVehicleListState> {
  final VehicleListCubit vehicleListCubit;
  final VehicleTypeListCubit vehicleTypeListCubit;
  final VehicleOwnerListCubit vehicleOwnerListCubit;
  final VehicleManufactureListCubit vehicleManufactureListCubit;
  PosVehicleListCubit(
      {required this.vehicleListCubit,
      required this.vehicleTypeListCubit,
      required this.vehicleOwnerListCubit,
      required this.vehicleManufactureListCubit})
      : _vehicleListCubit = vehicleListCubit,
        _vehicleTypeListCubit = vehicleTypeListCubit,
        _vehicleOwnerListCubit = vehicleOwnerListCubit,
        _vehicleManufactureListCubit = vehicleManufactureListCubit,
        super(PosVehicleListState.initial()) {
    _customerListSubscription =
        _vehicleListCubit.stream.listen((vehicleListState) {
      onVehicleChanged(vehicleListState);
    });
  }
  final VehicleListCubit _vehicleListCubit;
  final VehicleTypeListCubit _vehicleTypeListCubit;
  final VehicleOwnerListCubit _vehicleOwnerListCubit;

  final VehicleManufactureListCubit _vehicleManufactureListCubit;
  late StreamSubscription _customerListSubscription;

  onStarted() {
    List<VehicleModel>? vehicles =
        _vehicleListCubit.state.vehicles?.map((vehicle) {
      VehicleType? type = _vehicleTypeListCubit.state.vehicleTypes
          ?.firstWhere((type) => type.id == vehicle.vehicleType);

      VehicleManufacture? manufacture = _vehicleManufactureListCubit
          .state.vehicleManufactures
          ?.firstWhere((manuf) => manuf.id == type?.manufacture);
      VehicleManufactureModel manufactureModal =
          VehicleManufactureModel.createVehicleManufactureModel(manufacture);

      VehicleTypeModel typeModal =
          VehicleTypeModel.createVehicleTypeModel(type, manufactureModal);

      VehicleOwner? owner = _vehicleOwnerListCubit.state.vehicleOwners
          ?.firstWhere((owner) => owner.id == vehicle.vehicleOwner);
      VehicleOwnerModel ownerModal =
          VehicleOwnerModel.createVehicleOwnerModel(owner);

      return VehicleModel.createVehicleModel(vehicle, typeModal, ownerModal);
    }).toList();
    emit(state.copyWith(vehicles: vehicles));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<VehicleModel>? vehicles;
      _vehicleListCubit.state.vehicles?.forEach((vehicle) {
        if (vehicle.policyNumber.toLowerCase().contains(v.toLowerCase())) {
          VehicleType? type = _vehicleTypeListCubit.state.vehicleTypes
              ?.firstWhere((type) => type.id == vehicle.vehicleType);
          VehicleManufacture? manufacture = _vehicleManufactureListCubit
              .state.vehicleManufactures
              ?.firstWhere((manuf) => manuf.id == type?.manufacture);
          VehicleManufactureModel manufactureModal =
              VehicleManufactureModel.createVehicleManufactureModel(
                  manufacture);

          VehicleTypeModel typeModal =
              VehicleTypeModel.createVehicleTypeModel(type, manufactureModal);

          VehicleOwner? owner = _vehicleOwnerListCubit.state.vehicleOwners
              ?.firstWhere((owner) => owner.id == vehicle.vehicleOwner);

          VehicleOwnerModel ownerModal =
              VehicleOwnerModel.createVehicleOwnerModel(owner);

          vehicles?.add(
              VehicleModel.createVehicleModel(vehicle, typeModal, ownerModal));
        }
      });

      emit(state.copyWith(vehicles: vehicles, keyWord: v));
    } else {
      List<VehicleModel>? vehicles =
          _vehicleListCubit.state.vehicles?.map((vehicle) {
        VehicleType? type = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhere((type) => type.id == vehicle.vehicleType);
        VehicleManufacture? manufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhere((manuf) => manuf.id == type?.manufacture);
        VehicleManufactureModel manufactureModal =
            VehicleManufactureModel.createVehicleManufactureModel(manufacture);

        VehicleTypeModel typeModal =
            VehicleTypeModel.createVehicleTypeModel(type, manufactureModal);

        VehicleOwner? owner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhere((owner) => owner.id == vehicle.vehicleOwner);

        VehicleOwnerModel ownerModal =
            VehicleOwnerModel.createVehicleOwnerModel(owner);

        return VehicleModel.createVehicleModel(vehicle, typeModal, ownerModal);
      }).toList();
      emit(state.copyWith(vehicles: vehicles));
    }
  }

  onReset() {
    emit(PosVehicleListState.initial());
  }

  onVehicleChanged(VehicleListState vehicleListState) {
    if (state.keyWord == null) {
      List<VehicleModel>? vehicles =
          _vehicleListCubit.state.vehicles?.map((vehicle) {
        VehicleType? type = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhere((type) => type.id == vehicle.vehicleType);
        VehicleManufacture? manufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhere((manuf) => manuf.id == type?.manufacture);
        VehicleManufactureModel manufactureModal =
            VehicleManufactureModel.createVehicleManufactureModel(manufacture);

        VehicleTypeModel typeModal =
            VehicleTypeModel.createVehicleTypeModel(type, manufactureModal);

        VehicleOwner? owner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhere((owner) => owner.id == vehicle.vehicleOwner);

        VehicleOwnerModel ownerModal =
            VehicleOwnerModel.createVehicleOwnerModel(owner);

        return VehicleModel.createVehicleModel(vehicle, typeModal, ownerModal);
      }).toList();
      emit(state.copyWith(vehicles: vehicles));
    } else {
      List<VehicleModel>? vehicles;
      _vehicleListCubit.state.vehicles?.forEach((vehicle) {
        if (vehicle.policyNumber
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          VehicleType? type = _vehicleTypeListCubit.state.vehicleTypes
              ?.firstWhere((type) => type.id == vehicle.vehicleType);
          VehicleManufacture? manufacture = _vehicleManufactureListCubit
              .state.vehicleManufactures
              ?.firstWhere((manuf) => manuf.id == type?.manufacture);
          VehicleManufactureModel manufactureModal =
              VehicleManufactureModel.createVehicleManufactureModel(
                  manufacture);

          VehicleTypeModel typeModal =
              VehicleTypeModel.createVehicleTypeModel(type, manufactureModal);

          VehicleOwner? owner = _vehicleOwnerListCubit.state.vehicleOwners
              ?.firstWhere((owner) => owner.id == vehicle.vehicleOwner);

          VehicleOwnerModel ownerModal =
              VehicleOwnerModel.createVehicleOwnerModel(owner);

          vehicles?.add(
              VehicleModel.createVehicleModel(vehicle, typeModal, ownerModal));
        }
      });

      emit(state.copyWith(vehicles: vehicles));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
