part of 'intro_cubit.dart';

@freezed
class IntroState with _$IntroState {
  const factory IntroState(
      {required bool posCatalogList,
      required bool posCustomerList,
      required bool posVehicleList,
      required bool posVehicleOwnerList,
      required bool posVehicleTypeList,
      required bool posVehicleManufactureList,
      required bool posEmployeeDepartmentList,
      required bool posEmployeeList,
      required bool posMain}) = _IntroState;

  factory IntroState.initial() => const IntroState(
      posCatalogList: false,
      posCustomerList: false,
      posMain: false,
      posVehicleList: false,
      posVehicleManufactureList: false,
      posVehicleOwnerList: false,
      posVehicleTypeList: false,
      posEmployeeDepartmentList: false,
      posEmployeeList: false);

  factory IntroState.fromJson(Map<String, dynamic> json) =>
      _$IntroStateFromJson(json);
}
