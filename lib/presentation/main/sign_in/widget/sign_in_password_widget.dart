import 'package:flutter/material.dart';

class SignInPasswordWidget extends StatefulWidget {
  const SignInPasswordWidget({Key? key}) : super(key: key);

  @override
  State<SignInPasswordWidget> createState() => _SignInPasswordWidgetState();
}

class _SignInPasswordWidgetState extends State<SignInPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
            //controller: _passwordController,
            //obscureText: _obscure,
            autofocus: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              errorText: '*Wajib Diisi',
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
                onTap: null,
                child: const Icon(
                  Icons.visibility,
                  color: Colors.blue,
                ),
              ),
              //border: InputBorder.none,
            ),
            onChanged: null),
      ),
    );
  }
}
