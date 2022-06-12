import 'package:flutter/material.dart';

class SignInEmailOrPasswordWidget extends StatefulWidget {
  const SignInEmailOrPasswordWidget({Key? key}) : super(key: key);

  @override
  State<SignInEmailOrPasswordWidget> createState() =>
      _SignInEmailOrPasswordWidgetState();
}

class _SignInEmailOrPasswordWidgetState
    extends State<SignInEmailOrPasswordWidget> {
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
              //errorText: '*Wajib Diisi',
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
            onChanged: null),
      ),
    );
  }
}
