import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/presentation/main/sign/up/delegate/sign_up_delegate_header.dart';
import 'package:pos/presentation/utils/colors.dart';

class SignUpNotifScreen extends StatelessWidget {
  final Account account;
  const SignUpNotifScreen({Key? key, required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SliverPersistentHeader(
                  //pinned: true,
                  //floating: true,
                  delegate: SignUpDelegateHeader(),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text("Selamat "),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text("Anda Berhasil mendaftar"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text("Data Anda"),
                      ),
                    ],
                  ),
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
        ));
  }
}
