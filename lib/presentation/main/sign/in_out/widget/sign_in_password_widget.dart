import 'package:flutter/material.dart';

class SignInPasswordWidget extends StatefulWidget {
  const SignInPasswordWidget({Key? key}) : super(key: key);

  @override
  State<SignInPasswordWidget> createState() => _SignInPasswordWidgetState();
}

class _SignInPasswordWidgetState extends State<SignInPasswordWidget> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
            //controller: _passwordController,
            obscureText: _obscure,
            autofocus: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              //errorText: '*Wajib Diisi',
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
            onChanged: null),
      ),
    );
  }
}
