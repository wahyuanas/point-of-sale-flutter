import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/auth/cubit/auth_cubit.dart';
import 'package:pos/presentation/main/introduction/cubit/introduction_cubit.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/main/sign/in_out/cubit/sign_in_cubit.dart';
import 'package:pos/routes/app_routes.dart';
import 'package:pos/routes/cubit/route_cubit.dart';

import 'presentation/page_view/main/cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureGetIt();
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const PosApp()),
    storage: storage,
  );
}

class PosApp extends StatefulWidget {
  const PosApp({Key? key}) : super(key: key);

  @override
  PosAppState createState() => PosAppState();
}

class PosAppState extends State<PosApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<IntroductionCubit>(),
      ),
      BlocProvider(
        create: (context) => getIt<BottomNavigationBarCubit>(),
      ),
      BlocProvider(
        create: (context) => getIt<ModalCubit>(),
      ),
      BlocProvider(
        create: (context) => getIt<RouteCubit>(),
      ),
      BlocProvider(
        create: (context) => getIt<SignInCubit>(),
      ),
      BlocProvider(create: (context) => getIt<AuthCubit>()),
    ], child: const PosAppView());
  }
}

class PosAppView extends StatefulWidget {
  const PosAppView({Key? key}) : super(key: key);

  @override
  PosAppViewState createState() => PosAppViewState();
}

class PosAppViewState extends State<PosAppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  //NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  void initState() {
    //BlocProvider.of<AuthCubit>(context).authStarted();
    BlocProvider.of<ModalCubit>(context).onModalStarted(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
      ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [const Locale('en', 'US'), const Locale('id', 'ID')],
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFBFBFD),
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),

      // theme: ThemeData(
      //   //bottomAppBarColor: Colors.transparent,
      //   //bottomAppBarTheme: BottomAppBarTheme(color: Colors.transparent),
      //   // bottomNavigationBarTheme:
      //   //   BottomNavigationBarThemeData(backgroundColor: Colors.brown),
      //   //primarySwatch: Colors.blue,
      //   //visualDensity: VisualDensity.adaptivePlatformDensity,
      //   bottomSheetTheme:
      //       const BottomSheetThemeData(backgroundColor: Colors.transparent),
      // ),

      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
