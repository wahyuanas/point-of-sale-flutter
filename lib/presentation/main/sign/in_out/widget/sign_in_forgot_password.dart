import 'package:flutter/material.dart';

class SignInForgotPassword extends StatelessWidget {
  const SignInForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: const Text(
          "Lupa password?",
          style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
        ),
      ),
    );
  }
}
