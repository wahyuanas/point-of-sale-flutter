import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/main/modal/cubit/modal_cubit.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';
import 'package:pos/presentation/utils/colors.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import '../delegate/sign_up_delegate_header.dart';
import '../widget/sign_up_export_widget.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  BuildContext? modalContext, context3;
  @override
  void initState() {
    modalContext = BlocProvider.of<ModalCubit>(context).state.modalContext;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        context3 = context;
        state.status.when(
            initial: (() => null),
            loading: () {
              BlocProvider.of<ModalCubit>(modalContext!)
                  .onModalPush("Sedang Proses...");
            },
            success: (r) async {
              await Future.delayed(const Duration(milliseconds: 1000));
              BlocProvider.of<ModalCubit>(modalContext!)
                  .onModalContent("Anda Berhasil Sign Up");
              await Future.delayed(const Duration(milliseconds: 1000));
              BlocProvider.of<ModalCubit>(modalContext!).onModalPop();
              Navigator.of(context3!).pop();
              BlocProvider.of<RouteCubit>(context3!).onRoute(
                  const OnRouteState.signUpNotif(r: '/signUpNotif'), r);

              // BlocProvider.of<ModalCubit>(modalContext!)
              //     .onModalPush("Anda Berhasil SignUp");
              // //_showDialog(context);
              // await Future.delayed(const Duration(milliseconds: 3000));
              // BlocProvider.of<ModalCubit>(modalContext).onModalPop();
            },
            failure: (f) {
              BlocProvider.of<ModalCubit>(modalContext!)
                  .onModalFailure(FailureExceptions.getErrorMessage(f));
            });
      },
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColors.scaffoldBackgroundColor,
          appBar: PreferredSize(
            preferredSize: const Size(0, 0),
            child: AppBar(
              //leadingWidth: 50,

              // title: Text(
              //   "SignUp",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       fontWeight: FontWeight.w400, color: Colors.black, fontSize: 17),
              // ),
              automaticallyImplyLeading: false,
              // titleSpacing: 0.0,
              // toolbarOpacity: 1.0,
              // bottomOpacity: 0.5,
              // leading: Padding(
              //   padding:
              //       const EdgeInsets.only(left: 20, right: 5, top: 5, bottom: 5),
              //   child: Container(
              //     alignment: Alignment.center,
              //     //height: 30,
              //     //width: 30,
              //     decoration: const BoxDecoration(
              //       color: AppColors.appBarBackgroundColor,
              //       borderRadius: BorderRadius.all(Radius.circular(50.0)),
              //     ),
              //     child: Align(
              //       alignment: Alignment.center,
              //       child: IconButton(
              //           onPressed: () {
              //             Navigator.of(context).pop();
              //           },
              //           icon: const Icon(Icons.arrow_back,
              //               color: Colors.black, size: 25.0),
              //           iconSize: 23),
              //     ),
              //   ),
              // ),
              backgroundColor: AppColors.appBarBackgroundColor1,
              // systemOverlayStyle: SystemUiOverlayStyleApp.setSystemUIOverlayStyle(
              //     _rebuild == true ? const Color(0xFFFFFFFF) : Colors.transparent,
              //     Brightness.dark,
              //     Brightness.dark),
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                //systemNavigationBarColor: Colors.black,
                statusBarIconBrightness: Brightness.dark,
                systemNavigationBarIconBrightness: Brightness.dark,
              ),
              elevation: 0,
            ),
          ),
          body: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  // SliverAppBar(
                  //   title: Text(
                  //     "SignUp",
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.w400,
                  //         color: Colors.black,
                  //         fontSize: 17),
                  //   ),
                  //   elevation: 0.3,
                  //   automaticallyImplyLeading: false,
                  //   //centerTitle: true,
                  //   backgroundColor: AppColors.itemCardAddRemoveIconPrimaryColor,
                  //   //pinned: true,
                  //   expandedHeight: 200,
                  //   titleSpacing: 40,
                  //   //collapsedHeight: 60,
                  //   flexibleSpace: FlexibleSpaceBar(
                  //     title: const Padding(
                  //       padding: EdgeInsets.only(bottom: 25.0),
                  //       child: Text(
                  //         "SignUp",
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.w400,
                  //             color: Colors.black,
                  //             fontSize: 17),
                  //       ),
                  //     ),
                  //     background: ClipPath(
                  //       child: Container(
                  //         width: MediaQuery.of(context).size.width,
                  //         height: 150,
                  //         decoration: const BoxDecoration(
                  //             gradient: LinearGradient(
                  //           begin: Alignment.topRight,
                  //           end: Alignment.bottomLeft,
                  //           stops: [
                  //             0.5,
                  //             0.9,
                  //           ],
                  //           colors: [
                  //             AppColors.itemCardAddRemoveIconPrimaryColor,
                  //             Color.fromARGB(255, 161, 200, 231),
                  //           ],
                  //         )),
                  //         // child: const Text(
                  //         //   "SignUp",
                  //         //   textAlign: TextAlign.center,
                  //         //   style: TextStyle(
                  //         //       fontWeight: FontWeight.w500, color: Colors.white),
                  //         // ),
                  //       ),
                  //       clipper: CustomClipPath(),
                  //     ),
                  //   ),
                  // ),

                  SliverPersistentHeader(
                    //pinned: true,
                    //floating: true,
                    delegate: SignUpDelegateHeader(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: size.height * 0.07),
                  ),
                  const SignUpCompanyNameWidget(),
                  const SignUpAddressWidget(),
                  const SignUpPhoneNumberWidget(),
                  const SignUpEmailWidget(),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  const SignUpBusinessTypeWidget(),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  const SignUpMainBusinessTypeWidget(),
                  const SignUpCoreBusinessTypeWidget(),
                  const SignUpOutletsNumberWidget(),
                  SliverToBoxAdapter(
                    child: SizedBox(height: size.height * 0.03),
                  ),
                  const SignUpButtonWidget(),
                  SliverToBoxAdapter(
                    child: SizedBox(height: size.height * 0.03),
                  ),
                ],
              ),
              Positioned(
                top: 40,
                left: 10,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      //onPrimary: const Color.fromARGB(255, 177, 175, 174),
                      shape: const CircleBorder(),
                      minimumSize: const Size(35, 35)
                      //padding: EdgeInsets.fromLTRB(0, 0, 0, 0)
                      ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          )),
    );
  }

  _showDialog(BuildContext context1) {
    return showDialog(
        useRootNavigator: true,
        context: context1,
        // barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: const AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                title: Text('Progress',
                    style: TextStyle(
                        fontSize: 17.0, fontWeight: FontWeight.normal)),
                content: Text('Anda Berhasil SignUp',
                    style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal)),
              ));
        });
  }
}

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

// class Background extends StatelessWidget {
//   final Widget child;

//   const Background({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return SizedBox(
//       width: double.infinity,
//       height: size.height,
//       child: Stack(
//         //alignment: Alignment.center,
//         children: <Widget>[
//           // ClipPath(
//           //   child: Container(
//           //     width: MediaQuery.of(context).size.width,
//           //     height: 200,
//           //     decoration: const BoxDecoration(
//           //         gradient: LinearGradient(
//           //       begin: Alignment.topRight,
//           //       end: Alignment.bottomLeft,
//           //       stops: [
//           //         0.5,
//           //         0.9,
//           //       ],
//           //       colors: [
//           //         AppColors.itemCardAddRemoveIconPrimaryColor,
//           //         Color.fromARGB(255, 161, 200, 231),
//           //       ],
//           //     )),
//           //     child: const Text(
//           //       "SignUp",
//           //       textAlign: TextAlign.center,
//           //       style:
//           //           TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
//           //     ),
//           //   ),
//           //   clipper: CustomClipPath(),
//           // ),
//           child,
//         ],
//       ),
//     );
//   }
// }

