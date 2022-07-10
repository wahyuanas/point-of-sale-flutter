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
import 'package:collection/collection.dart';
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
    VehicleType? vehicleType;
    VehicleOwner? vehicleOwner;
    VehicleTypeModel? vehicleTypeModal;
    VehicleOwnerModel? vehicleOwnerModal;
    VehicleManufacture? vehicleManufacture;
    VehicleManufactureModel? vehicleManufactureModel;

    List<VehicleModel>? vehicleModels =
        _vehicleListCubit.state.vehicles?.map((vehicle) {
      vehicleType = _vehicleTypeListCubit.state.vehicleTypes
          ?.firstWhereOrNull((type) => type.id == vehicle.vehicleType);

      vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
          ?.firstWhereOrNull((owner) => owner.id == vehicle.vehicleOwner);

      if (vehicleType != null) {
        vehicleManufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhereOrNull((manuf) => manuf.id == vehicleType?.manufacture);
      }
      if (vehicleManufacture != null) {
        vehicleManufactureModel =
            VehicleManufactureModel.createVehicleManufactureModel(
                vehicleManufacture);

        vehicleTypeModal = VehicleTypeModel.createVehicleTypeModel(
            vehicleType, vehicleManufactureModel);
      }

      if (vehicleOwner != null) {
        vehicleOwnerModal =
            VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
      }

      return VehicleModel.createVehicleModel(
          vehicle, vehicleTypeModal, vehicleOwnerModal);
    }).toList();
    emit(state.copyWith(vehicles: vehicleModels));
  }

  onSearchKeyChanged(String v) {
    VehicleType? vehicleType;
    VehicleOwner? vehicleOwner;
    VehicleTypeModel? vehicleTypeModal;
    VehicleOwnerModel? vehicleOwnerModal;
    VehicleManufacture? vehicleManufacture;
    VehicleManufactureModel? vehicleManufactureModel;

    if (v.isNotEmpty) {
      List<VehicleModel>? vehicleModels = [];
      _vehicleListCubit.state.vehicles?.forEach((vehicle) {
        vehicleType = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhereOrNull((type) => type.id == vehicle.vehicleType);

        vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhereOrNull((owner) => owner.id == vehicle.vehicleOwner);

        if ((vehicle.policyNumber.toLowerCase().contains(v.toLowerCase())) ||
            (vehicleOwner != null
                ? vehicleOwner!.name.toLowerCase().contains(v.toLowerCase())
                : false)) {
          if (vehicleType != null) {
            vehicleManufacture = _vehicleManufactureListCubit
                .state.vehicleManufactures
                ?.firstWhereOrNull(
                    (manuf) => manuf.id == vehicleType?.manufacture);
          }

          if (vehicleManufacture != null) {
            vehicleManufactureModel =
                VehicleManufactureModel.createVehicleManufactureModel(
                    vehicleManufacture);

            vehicleTypeModal = VehicleTypeModel.createVehicleTypeModel(
                vehicleType, vehicleManufactureModel);
          }

          if (vehicleOwner != null) {
            vehicleOwnerModal =
                VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
          }

          vehicleModels?.add(VehicleModel.createVehicleModel(
              vehicle, vehicleTypeModal, vehicleOwnerModal));
        }
      });
      if (vehicleModels.isEmpty) {
        vehicleModels = null;
      }
      emit(state.copyWith(vehicles: vehicleModels, keyWord: v));
    } else {
      List<VehicleModel>? vehicleModels = [];
      vehicleModels = _vehicleListCubit.state.vehicles?.map((vehicle) {
        vehicleType = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhereOrNull((type) => type.id == vehicle.vehicleType);

        vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhereOrNull((owner) => owner.id == vehicle.vehicleOwner);

        if (vehicleType != null) {
          vehicleManufacture = _vehicleManufactureListCubit
              .state.vehicleManufactures
              ?.firstWhereOrNull(
                  (manuf) => manuf.id == vehicleType?.manufacture);
        }
        if (vehicleManufacture != null) {
          vehicleManufactureModel =
              VehicleManufactureModel.createVehicleManufactureModel(
                  vehicleManufacture);

          vehicleTypeModal = VehicleTypeModel.createVehicleTypeModel(
              vehicleType, vehicleManufactureModel);
        }

        if (vehicleOwner != null) {
          vehicleOwnerModal =
              VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
        }

        return VehicleModel.createVehicleModel(
            vehicle, vehicleTypeModal, vehicleOwnerModal);
      }).toList();
      if (vehicleModels!.isEmpty) {
        vehicleModels = null;
      }
      emit(state.copyWith(vehicles: vehicleModels, keyWord: null));
    }
  }

  onReset() {
    VehicleType? vehicleType;
    VehicleOwner? vehicleOwner;
    VehicleTypeModel? vehicleTypeModal;
    VehicleOwnerModel? vehicleOwnerModal;
    VehicleManufacture? vehicleManufacture;
    VehicleManufactureModel? vehicleManufactureModel;

    List<VehicleModel>? vehicleModels =
        _vehicleListCubit.state.vehicles?.map((vehicle) {
      vehicleType = _vehicleTypeListCubit.state.vehicleTypes
          ?.firstWhereOrNull((type) => type.id == vehicle.vehicleType);

      vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
          ?.firstWhereOrNull((owner) => owner.id == vehicle.vehicleOwner);

      if (vehicleType != null) {
        vehicleManufacture = _vehicleManufactureListCubit
            .state.vehicleManufactures
            ?.firstWhereOrNull((manuf) => manuf.id == vehicleType?.manufacture);
      }
      if (vehicleManufacture != null) {
        vehicleManufactureModel =
            VehicleManufactureModel.createVehicleManufactureModel(
                vehicleManufacture);

        vehicleTypeModal = VehicleTypeModel.createVehicleTypeModel(
            vehicleType, vehicleManufactureModel);
      }

      if (vehicleOwner != null) {
        vehicleOwnerModal =
            VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
      }

      return VehicleModel.createVehicleModel(
          vehicle, vehicleTypeModal, vehicleOwnerModal);
    }).toList();
    emit(state.copyWith(vehicles: vehicleModels, keyWord: null));
  }

  onVehicleChanged(VehicleListState vehicleListState) {
    VehicleType? vehicleType;
    VehicleOwner? vehicleOwner;
    VehicleTypeModel? vehicleTypeModal;
    VehicleOwnerModel? vehicleOwnerModal;
    VehicleManufacture? vehicleManufacture;
    VehicleManufactureModel? vehicleManufactureModel;

    if (state.keyWord != null) {
      List<VehicleModel>? vehicleModels = [];
      _vehicleListCubit.state.vehicles?.forEach((vehicle) {
        vehicleType = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhereOrNull((type) => type.id == vehicle.vehicleType);

        vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhereOrNull((owner) => owner.id == vehicle.vehicleOwner);

        if ((vehicle.policyNumber
                .toLowerCase()
                .contains(state.keyWord!.toLowerCase())) ||
            (vehicleOwner != null
                ? vehicleOwner!.name
                    .toLowerCase()
                    .contains(state.keyWord!.toLowerCase())
                : false)) {
          if (vehicleType != null) {
            vehicleManufacture = _vehicleManufactureListCubit
                .state.vehicleManufactures
                ?.firstWhereOrNull(
                    (manuf) => manuf.id == vehicleType?.manufacture);
          }
          if (vehicleManufacture != null) {
            vehicleManufactureModel =
                VehicleManufactureModel.createVehicleManufactureModel(
                    vehicleManufacture);

            vehicleTypeModal = VehicleTypeModel.createVehicleTypeModel(
                vehicleType, vehicleManufactureModel);
          }

          if (vehicleOwner != null) {
            vehicleOwnerModal =
                VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
          }

          vehicleModels?.add(VehicleModel.createVehicleModel(
              vehicle, vehicleTypeModal, vehicleOwnerModal));
        }
      });
      if (vehicleModels.isEmpty) {
        vehicleModels = null;
      }
      emit(state.copyWith(vehicles: vehicleModels));
    } else {
      List<VehicleModel>? vehicleModels = [];
      vehicleModels = _vehicleListCubit.state.vehicles?.map((vehicle) {
        vehicleType = _vehicleTypeListCubit.state.vehicleTypes
            ?.firstWhereOrNull((type) => type.id == vehicle.vehicleType);

        vehicleOwner = _vehicleOwnerListCubit.state.vehicleOwners
            ?.firstWhereOrNull((owner) => owner.id == vehicle.vehicleOwner);

        if (vehicleType != null) {
          vehicleManufacture = _vehicleManufactureListCubit
              .state.vehicleManufactures
              ?.firstWhereOrNull(
                  (manuf) => manuf.id == vehicleType?.manufacture);
        }
        if (vehicleManufacture != null) {
          vehicleManufactureModel =
              VehicleManufactureModel.createVehicleManufactureModel(
                  vehicleManufacture);

          vehicleTypeModal = VehicleTypeModel.createVehicleTypeModel(
              vehicleType, vehicleManufactureModel);
        }

        if (vehicleOwner != null) {
          vehicleOwnerModal =
              VehicleOwnerModel.createVehicleOwnerModel(vehicleOwner);
        }

        return VehicleModel.createVehicleModel(
            vehicle, vehicleTypeModal, vehicleOwnerModal);
      }).toList();
      if (vehicleModels!.isEmpty) {
        vehicleModels = null;
      }
      emit(state.copyWith(vehicles: vehicleModels));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
