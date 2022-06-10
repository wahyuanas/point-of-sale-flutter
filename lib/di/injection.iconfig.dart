import 'package:get_it/get_it.dart';
import 'package:pos/application/account/account_service.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/account/repository/i_account_repository.dart';
import 'package:pos/infrastructure/account/remote/api/account_api.dart';
import 'package:pos/infrastructure/account/remote/api/i_account_api.dart';
import 'package:pos/infrastructure/account/repository/account_repository.dart';
import 'package:pos/presentation/main/auth/cubit/auth_cubit.dart';
import 'package:pos/presentation/main/introduction/cubit/introduction_cubit.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/main/sign/in_out/cubit/sign_in_cubit.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';
import 'package:pos/routes/cubit/route_cubit.dart';

void $initGetIt(GetIt g) {
  g.registerLazySingleton<IAccountApi>(() => AccountApi());
  g.registerLazySingleton<IAccountRepository>(
      () => AccountRepository(accountApi: g()));
  g.registerLazySingleton<IAccountService>(
      () => AccountService(accountRepository: g()));
  g.registerLazySingleton<IntroductionCubit>(() => IntroductionCubit());
  g.registerLazySingleton<ModalCubit>(() => ModalCubit());
  g.registerLazySingleton<RouteCubit>(() => RouteCubit());
  g.registerLazySingleton<AuthCubit>(() => AuthCubit());
  g.registerLazySingleton<SignInCubit>(
      () => SignInCubit(authCubit: g(), accountService: g()));
  //g.registerLazySingleton<SignUpCubit>(() => SignUpCubit(accountService: g()));
}
