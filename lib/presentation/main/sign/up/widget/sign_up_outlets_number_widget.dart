import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';

class SignUpOutletsNumberWidget extends StatefulWidget {
  const SignUpOutletsNumberWidget({Key? key}) : super(key: key);

  @override
  State<SignUpOutletsNumberWidget> createState() =>
      _SignUpOutletsNumberWidgetState();
}

class _SignUpOutletsNumberWidgetState extends State<SignUpOutletsNumberWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onOutletsNumberChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<SignUpCubit, SignUpState>(buildWhen: (p, c) {
        _initial = false;
        return p.signUp.outletsNumber != c.signUp.outletsNumber ||
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
                    ? state.signUp.outletsNumber.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            notIntField: (v) => "*wajib berupa angka",
                            noSpaceAllowed: (v) =>
                                "*tidak boleh mengandung spasi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.outlet_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Jumlah Outlet",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),

                //border: InputBorder.none,
              ),
              onChanged: (v) => BlocProvider.of<SignUpCubit>(context)
                  .onOutletsNumberChanged(v)),
        );
      }),
    );
  }
}
