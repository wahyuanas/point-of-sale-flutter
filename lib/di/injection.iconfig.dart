import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:pos/application/account/account_service.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/account/repository/i_account_repository.dart';
import 'package:pos/infrastructure/account/remote/api/account_api.dart';
import 'package:pos/infrastructure/account/remote/api/i_account_api.dart';
import 'package:pos/infrastructure/account/repository/account_repository.dart';
import 'package:pos/infrastructure/service/firebase_injectable_module.dart';
import 'package:pos/presentation/common/cubit/intro/intro_cubit.dart';
import 'package:pos/presentation/main/auth/cubit/auth_cubit.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';
import 'package:pos/presentation/main/employee/list/cubit/employee_list_cubit.dart';
import 'package:pos/presentation/main/employee_department/list/cubit/employee_department_list_cubit.dart';
import 'package:pos/presentation/main/introduction/cubit/introduction_cubit.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/main/order/cubit/order_cubit.dart';
import 'package:pos/presentation/main/order_detail/cubit/order_detail_cubit.dart';
import 'package:pos/presentation/main/sign/in_out/cubit/sign_in_cubit.dart';
import 'package:pos/presentation/main/vehicle/form/create/cubit/vehicle_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/form/create/cubit/vehicle_type_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:pos/presentation/page_view/home/main/cubit/home_inventory_cubit.dart';
import 'package:pos/presentation/page_view/home/main/cubit/home_order_cubit.dart';
import 'package:pos/presentation/page_view/main/cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/routes/cubit/route_cubit.dart';

void $initGetIt(GetIt g) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);

  g.registerLazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  g.registerLazySingleton<IAccountApi>(
      () => AccountApi(firebaseFirestore: g()));
  g.registerLazySingleton<IAccountRepository>(
      () => AccountRepository(accountApi: g()));
  g.registerLazySingleton<IAccountService>(
      () => AccountService(accountRepository: g()));
  g.registerLazySingleton<IntroductionCubit>(() => IntroductionCubit());
  g.registerLazySingleton<BottomNavigationBarCubit>(
      () => BottomNavigationBarCubit());
  g.registerLazySingleton<ModalCubit>(() => ModalCubit());
  g.registerLazySingleton<RouteCubit>(() => RouteCubit());
  g.registerLazySingleton<AuthCubit>(() => AuthCubit());
  g.registerLazySingleton<SignInCubit>(
      () => SignInCubit(authCubit: g(), accountService: g()));
  g.registerLazySingleton<PosMainBloc>(() => PosMainBloc());
  g.registerLazySingleton<HomeInventoryCubit>(() => HomeInventoryCubit());
  g.registerLazySingleton<HomeOrderCubit>(() => HomeOrderCubit());
  g.registerLazySingleton<CatalogListCubit>(() => CatalogListCubit());
  g.registerLazySingleton<CustomerListCubit>(() => CustomerListCubit());
  g.registerLazySingleton<EmployeeListCubit>(() => EmployeeListCubit());
  g.registerLazySingleton<EmployeeDepartmentListCubit>(
      () => EmployeeDepartmentListCubit());
  g.registerLazySingleton<VehicleListCubit>(() => VehicleListCubit());
  g.registerLazySingleton<VehicleTypeListCubit>(() => VehicleTypeListCubit());
  g.registerLazySingleton<VehicleOwnerListCubit>(() => VehicleOwnerListCubit());
  g.registerLazySingleton<VehicleFormCreateCubit>(
      () => VehicleFormCreateCubit(vehicleListCubit: g()));
  g.registerLazySingleton<VehicleTypeFormCreateCubit>(
      () => VehicleTypeFormCreateCubit(vehicleTypeListCubit: g()));

  g.registerLazySingleton<VehicleManufactureListCubit>(
      () => VehicleManufactureListCubit());
  g.registerLazySingleton<OrderCubit>(() => OrderCubit());
  g.registerLazySingleton<OrderDetailCubit>(() => OrderDetailCubit());
  g.registerLazySingleton<PosRouteCubit>(() => PosRouteCubit());
  g.registerLazySingleton<IntroCubit>(() => IntroCubit());
  g.registerLazySingleton<PosPaymentCubit>(() => PosPaymentCubit());
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
