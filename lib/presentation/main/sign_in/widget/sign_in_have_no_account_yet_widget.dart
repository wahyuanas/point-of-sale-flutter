import 'package:flutter/material.dart';

class SignInHaveNoAccountYetWidget extends StatelessWidget {
  const SignInHaveNoAccountYetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: GestureDetector(
          onTap: () => {},
          child: const Text(
            "Belum Punya Akun? Daftar Disini",
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
