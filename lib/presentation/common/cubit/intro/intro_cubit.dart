import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'intro_state.dart';
part 'intro_cubit.freezed.dart';
part 'intro_cubit.g.dart';

class IntroCubit extends HydratedCubit<IntroState> {
  IntroCubit() : super(IntroState.initial());

  onPosCatalogListChanged(bool posCatalogList) {
    emit(state.copyWith(posCatalogList: posCatalogList));
  }

  onPosCustomerListChanged(bool posCustomerList) {
    emit(state.copyWith(posCustomerList: posCustomerList));
  }

  onPosMainChanged(bool posMain) {
    emit(state.copyWith(posMain: posMain));
  }

  onPosVehicleListChanged(bool posVehicleList) {
    emit(state.copyWith(posVehicleList: posVehicleList));
  }

  onPosVehicleTypeListChanged(bool posVehicleTypeList) {
    emit(state.copyWith(posVehicleTypeList: posVehicleTypeList));
  }

  onPosVehicleManufactureListChanged(bool posVehicleManufactureList) {
    emit(state.copyWith(posVehicleManufactureList: posVehicleManufactureList));
  }

  onPosVehicleOwnerListChanged(bool posVehicleOwnerList) {
    emit(state.copyWith(posVehicleOwnerList: posVehicleOwnerList));
  }

  onPosEmployeeListChanged(bool posEmployeeList) {
    emit(state.copyWith(posEmployeeList: posEmployeeList));
  }

  onPosEmployeeDepartmentListChanged(bool posEmployeeDepartmentList) {
    emit(state.copyWith(posEmployeeDepartmentList: posEmployeeDepartmentList));
  }

  @override
  IntroState fromJson(Map<String, dynamic> json) {
    debugPrint("INTRO CUBIT FROM JSON");
    return IntroState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(IntroState state) {
    debugPrint("INTRO CUBIT TO JSON");
    return state.toJson();
  }
}
