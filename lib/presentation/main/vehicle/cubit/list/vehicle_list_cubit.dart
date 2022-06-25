import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';

part 'vehicle_list_state.dart';
part 'vehicle_list_cubit.freezed.dart';
part 'vehicle_list_cubit.g.dart';

class VehicleCubit extends HydratedCubit<VehicleState> {
  VehicleCubit() : super(VehicleState.initial());

  void vehicleStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(vehicles: state.vehicles));
  }

  @override
  VehicleState fromJson(Map<String, dynamic> json) {
    debugPrint("Vehicle CUBIT FROM JSON");
    return VehicleState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(VehicleState state) {
    debugPrint("Vehicle CUBIT TO JSON ${state.vehicles}");
    return state.toJson();
  }
}
