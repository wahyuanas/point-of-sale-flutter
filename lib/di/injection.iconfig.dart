import 'package:get_it/get_it.dart';
import 'package:pos/application/main/introduction/cubit/introduction_cubit.dart';
import 'package:pos/application/main/modal/cubit/modal_cubit.dart';
import 'package:pos/routes/cubit/route_cubit.dart';

void $initGetIt(GetIt g) {
  g.registerLazySingleton<IntroductionCubit>(() => IntroductionCubit());
  g.registerLazySingleton<ModalCubit>(() => ModalCubit());
  g.registerLazySingleton<RouteCubit>(() => RouteCubit());
}
