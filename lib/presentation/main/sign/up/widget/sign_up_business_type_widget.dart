import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/sign/up/cubit/sign_up_cubit.dart';

class SignUpBusinessTypeWidget extends StatefulWidget {
  const SignUpBusinessTypeWidget({Key? key}) : super(key: key);

  @override
  State<SignUpBusinessTypeWidget> createState() =>
      _SignUpBusinessTypeWidgetState();
}

class _SignUpBusinessTypeWidgetState extends State<SignUpBusinessTypeWidget> {
  late bool _initial;
  String selectedValue = "";

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onBusinessTypeChanged("");
    super.initState();
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "", child: Text("-Pilih-")),
      const DropdownMenuItem(value: "1", child: Text("Otomotif")),
      const DropdownMenuItem(value: "2", child: Text("Umum")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<SignUpCubit, SignUpState>(buildWhen: (p, c) {
        _initial = false;
        return p.signUp.businessType != c.signUp.businessType ||
            p.failOrUnit != c.failOrUnit;
      }, builder: (context, state) {
        return Container(
          //height: 60,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButtonFormField(
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.signUp.businessType.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib dipilih",
                            orElse: () => null),
                        (r) => null)
                    : null,
                label: Row(
                  children: const [
                    Text("Jenis Usaha"),
                    // _initial == false && selectedValue == ""
                    //     ? const Text(
                    //         " *wajib dipilih",
                    //         style: TextStyle(fontSize: 15.5, color: Colors.red),
                    //       )
                    //     : Container(),
                  ],
                ),
                labelStyle: const TextStyle(fontSize: 17),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  //borderSide: const BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                icon: const Icon(
                  Icons.business_outlined,
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
                    .onBusinessTypeChanged(v ?? "");
              },
              items: dropdownItems),
        );
      }),
    );
  }
}
