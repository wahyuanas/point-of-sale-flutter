import 'package:flutter/material.dart';

class SignInWithMediaSocial extends StatelessWidget {
  const SignInWithMediaSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  //BlocProvider.of<SignInCubit>(context).onSignInWithGoogle();
                },
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, //Color(0xfff05945),
                            offset: Offset(0, 0),
                            blurRadius: 5.0),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)),
                  width: (size.width / 2) - 170,
                  height: 40,
                  child: Image.asset(
                    "assets/icons/google.png",
                  ),
                )),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
                onTap: () {
                  //BlocProvider.of<SignInCubit>(context).onSignInWithFacebook();
                },
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, //Color(0xfff05945),
                            offset: Offset(0, 0),
                            blurRadius: 5.0),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)),
                  width: (size.width / 2) - 170,
                  height: 40,
                  child: Image.asset(
                    "assets/icons/fb.png",
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
