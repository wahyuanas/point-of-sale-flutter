import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/in_out/cubit/sign_in_cubit.dart';

class SignInPasswordWidget extends StatefulWidget {
  const SignInPasswordWidget({Key? key}) : super(key: key);

  @override
  State<SignInPasswordWidget> createState() => _SignInPasswordWidgetState();
}

class _SignInPasswordWidgetState extends State<SignInPasswordWidget> {
  bool _obscure = true;
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
        return p.signIn.password != c.signIn.password ||
            p.failOrUnit != c.failOrUnit;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              //controller: _passwordController,
              obscureText: _obscure,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.signIn.password.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.lock_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Password",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                suffixIcon: GestureDetector(
                  onTap: () => setState(() {
                    _obscure = !_obscure;
                  }),
                  child: Icon(
                    _obscure ? Icons.visibility : Icons.visibility_off,
                    color: _obscure ? Colors.blue : Colors.black,
                  ),
                ),
                //border: InputBorder.none,
              ),
              onChanged: (v) =>
                  BlocProvider.of<SignInCubit>(context).onPasswordChanged(v)),
        );
      }),
    );
  }
}
