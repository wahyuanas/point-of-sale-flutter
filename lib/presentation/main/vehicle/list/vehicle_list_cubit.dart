import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';

part 'vehicle_list_state.dart';
part 'vehicle_list_cubit.freezed.dart';
part 'vehicle_list_cubit.g.dart';

class VehicleListCubit extends HydratedCubit<VehicleListState> {
  VehicleListCubit() : super(VehicleListState.initial());

  void vehicleStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(vehicles: state.vehicles));
  }

  onAddVehicle(Vehicle vehicle) {
    List<Vehicle>? vehicles;
    if (state.vehicles != null) {
      vehicles = List.from(state.vehicles!.toList());
      vehicles.add(vehicle);
    } else {
      vehicles ?? [];
      vehicles?.add(vehicle);
    }
    emit(state.copyWith(
      vehicles: vehicles,
    ));
  }

  @override
  VehicleListState fromJson(Map<String, dynamic> json) {
    debugPrint("Vehicle CUBIT FROM JSON");
    return VehicleListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(VehicleListState state) {
    debugPrint("Vehicle CUBIT TO JSON ${state.vehicles}");
    return state.toJson();
  }
}
