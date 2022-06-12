import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';

class SignUpCoreBusinessTypeWidget extends StatefulWidget {
  const SignUpCoreBusinessTypeWidget({Key? key}) : super(key: key);

  @override
  State<SignUpCoreBusinessTypeWidget> createState() =>
      _SignUpCoreBusinessTypeWidgetState();
}

class _SignUpCoreBusinessTypeWidgetState
    extends State<SignUpCoreBusinessTypeWidget> {
  late bool _initial;
  late bool _show;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _initial = true;
    _show = false;
    _textEditingController = TextEditingController();
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<SignUpCubit, SignUpState>(buildWhen: (p, c) {
        if (p.signUp.businessType != c.signUp.businessType) {
          return c.signUp.businessType.value.fold((l) {
            BlocProvider.of<SignUpCubit>(context)
                .onCoreBusinessTypeChanged(null);
            _show = false;
            return false;
          }, (r) {
            if (r == 2) {
              BlocProvider.of<SignUpCubit>(context)
                  .onCoreBusinessTypeChanged("");
              _show = true;
              _textEditingController.text = "";
              return false;
            } else {
              BlocProvider.of<SignUpCubit>(context)
                  .onCoreBusinessTypeChanged(null);
              _show = false;
              return false;
            }
          });
        } else if (p.signUp.coreBusinessType != c.signUp.coreBusinessType) {
          _initial = false;
          return true;
        } else if (p.failOrUnit != c.failOrUnit && _show == true) {
          _initial = false;
          return true;
        }
        return false;
      }, builder: (context, state) {
        return _show == true
            ? Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    controller: _textEditingController,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorText: _initial == false
                          ? state.signUp.coreBusinessType.value.fold(
                              (l) => l.maybeWhen(
                                  emptyField: (v) => "*wajib diisi",
                                  orElse: () => null),
                              (r) => null)
                          : null,
                      icon: const Icon(
                        Icons.add_business_outlined,
                        color: Colors.blue,
                        size: 26.0, /*Color(0xff224597)*/
                      ),
                      labelText: "Jenis Sub Usaha",
                      labelStyle: const TextStyle(
                          color: Colors.black54, fontSize: 17.0),
                      hintText: '',
                      //enabledBorder: InputBorder.none,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),

                      //border: InputBorder.none,
                    ),
                    onChanged: (v) => BlocProvider.of<SignUpCubit>(context)
                        .onCoreBusinessTypeChanged(v)),
              )
            : Container();
      }),
    );
  }
}
