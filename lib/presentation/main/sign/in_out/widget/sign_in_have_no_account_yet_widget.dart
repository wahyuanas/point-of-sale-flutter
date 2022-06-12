import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

class SignInHaveNoAccountYetWidget extends StatelessWidget {
  const SignInHaveNoAccountYetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Belum Punya Akun?",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2661FA)),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () => BlocProvider.of<RouteCubit>(context)
                  .onRoute(const OnRouteState.signUp(), null),
              child: const Text(
                "Daftar Disini",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 41, 28, 66)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
