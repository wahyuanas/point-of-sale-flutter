import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';

class SignUpAddressWidget extends StatefulWidget {
  const SignUpAddressWidget({Key? key}) : super(key: key);

  @override
  State<SignUpAddressWidget> createState() => _SignUpAddressWidgetState();
}

class _SignUpAddressWidgetState extends State<SignUpAddressWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onAddressChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<SignUpCubit, SignUpState>(buildWhen: (p, c) {
        _initial = false;
        return p.signUp.address != c.signUp.address ||
            p.failOrUnit != c.failOrUnit;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.signUp.address.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Alamat",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),

                //border: InputBorder.none,
              ),
              onChanged: (v) =>
                  BlocProvider.of<SignUpCubit>(context).onAddressChanged(v)),
        );
      }),
    );
  }
}
