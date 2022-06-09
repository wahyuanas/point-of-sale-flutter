import 'package:flutter/material.dart';

class SignInWithWidget extends StatelessWidget {
  const SignInWithWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: GestureDetector(
          onTap: () => {},
          child: const Text(
            "Atau SignIn Dengan",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2661FA)),
          ),
        ),
      ),
    );
  }
}
