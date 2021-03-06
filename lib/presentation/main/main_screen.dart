import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/auth/cubit/auth_cubit.dart';
import 'package:pos/presentation/main/introduction/cubit/introduction_cubit.dart';
import 'package:pos/presentation/main/introduction/screen/introduction_view_screen.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/main/sign/in_out/screen/sign_in_screen.dart';
import 'package:pos/routes/cubit/route_cubit.dart';

import '../page_view/main/screen/page_view_main._screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ModalCubit, ModalState>(
          listenWhen: (p, c) => p.onModalState != c.onModalState,
          listener: (context, state) {
            state.onModalState?.when(
                push: () => _showDialog(state.content),
                pop: () => Navigator.pop(context),
                failure: () => null);
          },
        ),
        BlocListener<RouteCubit, RouteState>(
          listener: (context, state) {
            if (state.onRoute != null) {
              if (state.args == null) {
                Navigator.pushNamed(context, state.onRoute!.r);
              } else {
                Navigator.pushNamed(context, state.onRoute!.r,
                    arguments: state.args);
              }
            }
            // state.onRoute?.when(
            //   signUp: (r) => Navigator.pushNamed(context, r),
            //   signUpNotif: (r) =>
            //       Navigator.pushNamed(context, r, arguments: state.args),
            //   postCatalogList: (r) => Navigator.pushNamed(context, r),
            //   postCatalogform: (r) => Navigator.pushNamed(context, r),
            //   purchase: (r) => Navigator.pushNamed(context, r),
            //   posCatalogItemDetail: (r) =>
            //       Navigator.pushNamed(context, r, arguments: state.args),
            //   postCustomerList: (r) => Navigator.pushNamed(context, r),
            // );
          },
        ),
      ],
      child: BlocBuilder<IntroductionCubit, IntroductionState>(
        builder: (context, state) {
          return state.introductionState.maybeWhen(
              unDone: () => const IntroductionViewScreen(),
              done: () => BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return state.auth == null
                          ? const SignInScreen()
                          : const PageViewMainScreen();
                      // ShowCaseWidget(
                      //     onStart: (index, key) {},
                      //     builder: Builder(
                      //         builder: (context) =>
                      //             const PageViewMainScreen()),
                      //   );
                    },
                  ),
              orElse: () => Center(
                      child: Container(
                    color: Colors.blue[100],
                    child: Image.asset(
                      "assets/images/introduction/flutter.png",
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                  )));
        },
      ),
    );
  }

  _showDialog(String? content) {
    return showDialog(
        useRootNavigator: true,
        context: context,
        // barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
            child:
                BlocBuilder<ModalCubit, ModalState>(builder: (context, state) {
              return AlertDialog(
                actions: state.onModalState!.maybeWhen(
                  failure: () => [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.only(right: 25.0, bottom: 15.0),
                        child: Text("Ok",
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    )
                  ],
                  orElse: () => null,
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                title: const Text('Progress',
                    style: TextStyle(
                        fontSize: 17.0, fontWeight: FontWeight.normal)),
                content: state.onModalState!.maybeWhen(
                  failure: () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.warning_outlined,
                        color: Colors.blue,
                        size: 40.0, /*Color(0xff22stat4597)*/
                      ),
                      Text(
                          state.content != null
                              ? "Error : ${state.content!}"
                              : "",
                          style: const TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.normal))
                    ],
                  ),
                  orElse: () => Text(state.content ?? "",
                      style: const TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.normal)),
                ),

                // Text(state.content ?? "",
                //     style: const TextStyle(
                //         fontSize: 15.0, fontWeight: FontWeight.normal)),
              );
            }),
          );
        });
  }
}
