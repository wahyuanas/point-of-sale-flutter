import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/vehicle_owner/entity/vehicle_owner.dart';

part 'vehicle_owner_list_state.dart';
part 'vehicle_owner_list_cubit.freezed.dart';
part 'vehicle_owner_list_cubit.g.dart';

class VehicleOwnerListCubit extends HydratedCubit<VehicleOwnerListState> {
  VehicleOwnerListCubit() : super(VehicleOwnerListState.initial());

  // void catalogStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(vehicleOwners: state.vehicleOwners));
  // }

  onAddVehicleOwner(VehicleOwner vehicleOwner) {
    List<VehicleOwner> vehicleOwners = [];
    if (state.vehicleOwners != null) {
      vehicleOwners = List.from(state.vehicleOwners!.toList());
      vehicleOwners.add(vehicleOwner);
    } else {
      vehicleOwners.add(vehicleOwner);
    }
    emit(state.copyWith(
      vehicleOwners: vehicleOwners,
    ));
  }

  @override
  VehicleOwnerListState fromJson(Map<String, dynamic> json) {
    debugPrint("VehicleOwner CUBIT FROM JSON");
    return VehicleOwnerListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(VehicleOwnerListState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.vehicleOwners}");
    return state.toJson();
  }
}
