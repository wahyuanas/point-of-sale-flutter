import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/in_out/cubit/sign_in_cubit.dart';

class SignInEmailOrPhoneNumberWidget extends StatefulWidget {
  const SignInEmailOrPhoneNumberWidget({Key? key}) : super(key: key);

  @override
  State<SignInEmailOrPhoneNumberWidget> createState() =>
      _SignInEmailOrPhoneNumberWidgetState();
}

class _SignInEmailOrPhoneNumberWidgetState
    extends State<SignInEmailOrPhoneNumberWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<SignInCubit, SignInState>(buildWhen: (p, c) {
        _initial = false;
        return p.signIn.emailOrPhoneNumber != c.signIn.emailOrPhoneNumber ||
            p.failOrUnit != c.failOrUnit;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              //controller: _passwordController,
              //obscureText: _obscure,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.signIn.emailOrPhoneNumber.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: Column(
                  children: const [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                      size: 26.0, /*Color(0xff224597)*/
                    ),
                    Icon(
                      Icons.phone_android_outlined,
                      color: Colors.blue,
                      size: 26.0, /*Color(0xff224597)*/
                    ),
                  ],
                ),
                labelText: "Email/No. HP",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),

                //border: InputBorder.none,
              ),
              onChanged: (v) => BlocProvider.of<SignInCubit>(context)
                  .onEmailOrPhoneNumberChanged(v)),
        );
      }),
    );
  }
}
