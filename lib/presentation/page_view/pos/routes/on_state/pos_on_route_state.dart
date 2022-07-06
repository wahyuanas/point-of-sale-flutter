import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_on_route_state.freezed.dart';

@freezed
class PosOnRouteState<T> with _$PosOnRouteState<T> {
  const factory PosOnRouteState.posCatalogList({required T r}) =
      _PosCatalogList<T>;
  const factory PosOnRouteState.posCatalogForm({required T r}) =
      _PosCatalogForm<T>;
  const factory PosOnRouteState.purchase({required T r}) = _Purchase<T>;
  const factory PosOnRouteState.posCatalogItemDetail({required T r}) =
      _PosCatalogItemDetail<T>;
  const factory PosOnRouteState.posCustomerList({required T r}) =
      _PosCustomerList<T>;
  const factory PosOnRouteState.posCustomerForm({required T r}) =
      _PosCustomerForm<T>;
  const factory PosOnRouteState.posVehicleList({required T r}) =
      _PosVehicleList<T>;
  const factory PosOnRouteState.posVehicleForm({required T r}) =
      _PosVehicleForm<T>;
  const factory PosOnRouteState.posVehicleOwnerList({required T r}) =
      _PosVehicleOwnerList<T>;
  const factory PosOnRouteState.posVehicleOwnerForm({required T r}) =
      _PosVehicleOwnerForm<T>;
  const factory PosOnRouteState.posVehicleTypeList({required T r}) =
      _PosVehicleTypeList<T>;
  const factory PosOnRouteState.posVehicleTypeForm({required T r}) =
      _PosVehicleTypeForm<T>;
  const factory PosOnRouteState.posVehicleManufactureList({required T r}) =
      _PosVehicleManufactureList<T>;
  const factory PosOnRouteState.posVehicleManufactureForm({required T r}) =
      _PosVehicleManufactureForm<T>;
  const factory PosOnRouteState.posEmployeeList({required T r}) =
      _PosEmployeeList<T>;
  const factory PosOnRouteState.posEmployeeForm({required T r}) =
      _PosEmployeeForm<T>;
  const factory PosOnRouteState.posEmployeeDepartmentList({required T r}) =
      _PosEmployeeDepartmentList<T>;
  const factory PosOnRouteState.posEmployeeDepartmentForm({required T r}) =
      _PosEmployeeDepartmentForm<T>;
}
