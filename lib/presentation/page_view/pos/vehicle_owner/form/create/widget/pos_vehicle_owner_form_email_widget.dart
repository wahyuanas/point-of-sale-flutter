import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle_owner/form/create/cubit/vehicle_owners_form_create_cubit.dart';

class PosVehicleOwnerFormEmailWidget extends StatefulWidget {
  const PosVehicleOwnerFormEmailWidget({Key? key}) : super(key: key);

  @override
  State<PosVehicleOwnerFormEmailWidget> createState() =>
      _PosVehicleOwnerFormEmailWidgetState();
}

class _PosVehicleOwnerFormEmailWidgetState
    extends State<PosVehicleOwnerFormEmailWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:
          BlocBuilder<VehicleOwnerFormCreateCubit, VehicleOwnerFormCreateState>(
              buildWhen: (p, c) {
        if (p.initial != c.initial) {
          if (c.initial == false) {
            if (_initial == true) _initial = false;
            return true;
          } else if (c.initial == true) {
            if (_initial == false) _initial = true;
            _controller.text = '';
            return false;
          }
        } else if (p.status != c.status) {
          c.status.maybeWhen(
              initial: () {
                if (_initial == false) _initial = true;
                _controller.text = '';
              },
              orElse: () => null);
          return false;
        } else if (p.createVehicleOwner.email != c.createVehicleOwner.email) {
          if (_initial == true) _initial = false;
          return true;
        }
        return false;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
              controller: _controller,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.createVehicleOwner.email.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            invalidEmail: (v) => "email tidak valid",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Email",
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
                  BlocProvider.of<VehicleOwnerFormCreateCubit>(context)
                      .onCreateVehicleOwnerEmailChanged(v)),
        );
      }),
    );
  }
}
