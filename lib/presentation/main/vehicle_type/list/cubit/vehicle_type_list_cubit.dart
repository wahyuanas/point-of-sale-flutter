import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';

part 'vehicle_type_list_state.dart';
part 'vehicle_type_list_cubit.freezed.dart';
part 'vehicle_type_list_cubit.g.dart';

class VehicleTypeListCubit extends HydratedCubit<VehicleTypeListState> {
  VehicleTypeListCubit() : super(VehicleTypeListState.initial());

  // void catalogStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(vehicleTypes: state.vehicleTypes));
  // }

  onAddVehicleType(VehicleType vehicleType) {
    List<VehicleType> vehicleTypes = [];
    if (state.vehicleTypes != null) {
      vehicleTypes = List.from(state.vehicleTypes!.toList());
      vehicleTypes.add(vehicleType);
    } else {
      vehicleTypes.add(vehicleType);
    }
    emit(state.copyWith(
      vehicleTypes: vehicleTypes,
    ));
  }

  @override
  VehicleTypeListState fromJson(Map<String, dynamic> json) {
    debugPrint("VehicleType CUBIT FROM JSON");
    return VehicleTypeListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(VehicleTypeListState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.vehicleTypes}");
    return state.toJson();
  }
}
