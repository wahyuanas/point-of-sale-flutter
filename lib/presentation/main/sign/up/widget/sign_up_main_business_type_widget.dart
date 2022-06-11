import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';

class SignUpMainBusinessTypeWidget extends StatefulWidget {
  const SignUpMainBusinessTypeWidget({Key? key}) : super(key: key);

  @override
  State<SignUpMainBusinessTypeWidget> createState() =>
      _SignUpMainBusinessTypeWidgetState();
}

class _SignUpMainBusinessTypeWidgetState
    extends State<SignUpMainBusinessTypeWidget> {
  late bool _initial;
  late bool _show;
  String selectedValue = "";

  @override
  void initState() {
    _initial = true;
    _show = false;
    //BlocProvider.of<SignUpCubit>(context).onBusinessTypeChanged("");
    super.initState();
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    debugPrint("OKEEEE $_initial $selectedValue");
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "", child: Text("-Pilih-")),
      const DropdownMenuItem(value: "1", child: Text("Mobil")),
      const DropdownMenuItem(value: "2", child: Text("Motor")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<SignUpCubit, SignUpState>(buildWhen: (p, c) {
        if (p.signUp.businessType != c.signUp.businessType) {
          return c.signUp.businessType.value.fold((l) {
            BlocProvider.of<SignUpCubit>(context)
                .onMainBusinessTypeChanged(null);
            selectedValue = "";
            _show = false;
            return false;
          }, (r) {
            if (r == 1) {
              BlocProvider.of<SignUpCubit>(context)
                  .onMainBusinessTypeChanged("");
              _show = true;
              return false;
            } else {
              BlocProvider.of<SignUpCubit>(context)
                  .onMainBusinessTypeChanged(null);
              selectedValue = "";
              _show = false;
              return false;
            }
          });
        } else if (p.signUp.mainBusinessType != c.signUp.mainBusinessType) {
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
                //height: 60,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: const Text("Jenis Sub Usaha"),
                      errorText: _initial == false
                          ? state.signUp.mainBusinessType.value.fold(
                              (l) => l.maybeWhen(
                                  emptyField: (v) => "*wajib dipilih",
                                  orElse: () => null),
                              (r) => null)
                          : null,
                      labelStyle: const TextStyle(fontSize: 17),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      icon: const Icon(
                        Icons.add_business_outlined,
                        color: Colors.blue,
                        size: 26.0, /*Color(0xff224597)*/
                      ),
                      //filled: true,
                      //fillColor: Colors.blueAccent,
                    ),
                    validator: (value) => null,
                    //dropdownColor: Colors.blueAccent,
                    value: selectedValue,
                    onChanged: (String? v) {
                      selectedValue = v ?? "";
                      BlocProvider.of<SignUpCubit>(context)
                          .onMainBusinessTypeChanged(v ?? "");
                    },
                    items: dropdownItems),
              )
            : Container();
      }),
    );
  }
}
