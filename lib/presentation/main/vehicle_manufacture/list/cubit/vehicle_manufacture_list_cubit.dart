import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/vehicle_manufacture/entity/vehicle_manufacture.dart';

part 'vehicle_manufacture_list_state.dart';
part 'vehicle_manufacture_list_cubit.freezed.dart';
part 'vehicle_manufacture_list_cubit.g.dart';

class VehicleManufactureListCubit
    extends HydratedCubit<VehicleManufactureListState> {
  VehicleManufactureListCubit() : super(VehicleManufactureListState.initial());

  // void catalogStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(vehicleManufactures: state.vehicleManufactures));
  // }

  onAddVehicleManufacture(VehicleManufacture vehicleManufacture) {
    List<VehicleManufacture> vehicleManufactures = [];
    if (state.vehicleManufactures != null) {
      vehicleManufactures = List.from(state.vehicleManufactures!.toList());
      vehicleManufactures.add(vehicleManufacture);
    } else {
      vehicleManufactures.add(vehicleManufacture);
    }
    emit(state.copyWith(
      vehicleManufactures: vehicleManufactures,
    ));
  }

  @override
  VehicleManufactureListState fromJson(Map<String, dynamic> json) {
    debugPrint("VehicleManufacture CUBIT FROM JSON");
    return VehicleManufactureListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(VehicleManufactureListState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.vehicleManufactures}");
    return state.toJson();
  }
}
