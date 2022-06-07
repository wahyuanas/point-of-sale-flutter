import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/main/introduction/cubit/introduction_cubit.dart';
import 'package:pos/application/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/main/introduction/screen/introduction_view_screen.dart';
import 'package:pos/routes/cubit/route_cubit.dart';

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
            state.onRoute?.when(
              cart: () => Navigator.pushNamed(context, '/cart'),
              itemDetail: () => Navigator.pushNamed(context, '/itemDetail',
                  arguments: state.args),
              categoryItemList: () => Navigator.pushNamed(
                  context, '/categoryItemList',
                  arguments: state.args),
              searchFilterPickUp: () =>
                  Navigator.pushNamed(context, '/searchFilterPickUp'),
              login: () => Navigator.pushNamed(context, '/login'),
            );
          },
        ),
      ],
      child: BlocBuilder<IntroductionCubit, IntroductionState>(
        builder: (context, state) {
          return state.introductionState.maybeWhen(
              unDone: () => const IntroductionViewScreen(),
              done: () => ,
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
                      child: const Text("Ok",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.normal)),
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
                content: Text(state.content ?? "",
                    style: const TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal)),
              );
            }),
          );
        });
  }
}
